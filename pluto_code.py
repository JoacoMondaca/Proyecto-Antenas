#!/usr/bin/env python3
"""
hi21cm_pluto.py - Medicion de la linea de 21 cm del hidrogeno neutro (HI)
con una Pluto SDR / Pluto+.

Captura IQ durante un tiempo de integracion (por defecto 240 s), promedia
periodogramas (metodo de Welch/Bartlett) y entrega la PSD integrada.

Salidas (en la carpeta --outdir):
    <nombre>.npz   frecuencia, velocidad, PSD y metadatos
    <nombre>.csv   freq_Hz, vel_km_s, psd_lineal, psd_dB [, on/off - 1]
    <nombre>.png   grafico

Dependencias:
    pip install pyadi-iio numpy matplotlib
    (y libiio instalado en el sistema)

Ejemplos:
    # 1) Referencia (OFF): bocina apuntando lejos de la Via Lactea, o carga de 50 ohm
    python hi21cm_pluto.py --name off --time 240

    # 2) Medicion (ON): bocina apuntando al plano galactico, usando la referencia
    python hi21cm_pluto.py --name cygnus --time 300 --ref datos_hi/off.npz

    # Prueba sin hardware
    python hi21cm_pluto.py --sim --time 10
"""

import argparse
import os
import sys
import time
from datetime import datetime, timezone

import numpy as np

F_HI = 1420.405751768e6      # Hz, frecuencia en reposo de la linea HI
C_KMS = 299792.458           # km/s


# ----------------------------------------------------------------------------
# Argumentos
# ----------------------------------------------------------------------------
def parse_args():
    p = argparse.ArgumentParser(description="PSD integrada de la linea de 21 cm con Pluto SDR")
    p.add_argument("--uri", default="ip:192.168.2.1",
                   help="URI de la Pluto (ip:192.168.2.1, ip:pluto.local, usb:...)")
    p.add_argument("--time", type=float, default=240.0,
                   help="tiempo de integracion en segundos (reloj de pared) [240]")
    p.add_argument("--fs", type=float, default=3e6,
                   help="tasa de muestreo = ancho de banda observado, Hz [3e6]")
    p.add_argument("--lo-offset", type=float, default=-0.6e6,
                   help="desplazamiento del LO respecto a la linea, Hz [-0.6e6]. "
                        "Evita que el pico de DC del receptor caiga sobre la linea")
    p.add_argument("--gain", type=float, default=60.0,
                   help="ganancia RX manual en dB (0-73 aprox.) [60]")
    p.add_argument("--nfft", type=int, default=2048,
                   help="canales del espectro [2048]")
    p.add_argument("--nblocks", type=int, default=512,
                   help="FFTs por buffer (buffer = nfft*nblocks muestras) [512]")
    p.add_argument("--ref", default=None,
                   help="archivo .npz de referencia (OFF) para calcular ON/OFF - 1")
    p.add_argument("--tsys", type=float, default=None,
                   help="si se da (K), escala ON/OFF - 1 a temperatura: T = Tsys*(ON/OFF - 1)")
    p.add_argument("--name", default=None, help="nombre base de los archivos de salida")
    p.add_argument("--outdir", default="datos_hi", help="carpeta de salida [datos_hi]")
    p.add_argument("--show", action="store_true", help="mostrar el grafico al terminar")
    p.add_argument("--sim", action="store_true", help="modo simulado (sin hardware)")
    return p.parse_args()


# ----------------------------------------------------------------------------
# Fuentes de muestras
# ----------------------------------------------------------------------------
class PlutoSource:
    """Receptor Pluto / Pluto+ usando pyadi-iio."""

    def __init__(self, uri, fs, lo, gain, bufsize):
        try:
            import adi
        except ImportError:
            sys.exit("Falta pyadi-iio:  pip install pyadi-iio")

        self.sdr = adi.Pluto(uri=uri)
        s = self.sdr
        s.rx_enabled_channels = [0]
        s.sample_rate = int(fs)
        s.rx_rf_bandwidth = int(fs)
        s.rx_lo = int(lo)
        # Ganancia MANUAL: con AGC la escala de potencia cambiaria durante la medicion
        s.gain_control_mode_chan0 = "manual"
        s.rx_hardwaregain_chan0 = float(gain)
        s.rx_buffer_size = int(bufsize)

        # Silenciar el transmisor para que no se filtre al receptor
        try:
            s.tx_hardwaregain_chan0 = -89.0
            s.tx_lo = int(lo + 400e6)
        except Exception:
            pass

        # Descartar los primeros buffers (transitorios del sintetizador/filtros)
        for _ in range(5):
            s.rx()

    def read(self):
        return self.sdr.rx()

    def close(self):
        try:
            self.sdr.rx_destroy_buffer()
        except Exception:
            pass


class SimSource:
    """Ruido con pasabanda ondulada + linea HI debil + pico de DC, para pruebas."""

    def __init__(self, fs, lo, bufsize, with_line=True):
        self.n = int(bufsize)
        self.rng = np.random.default_rng()
        f = np.fft.fftfreq(self.n, 1 / fs)
        shape = 1 + 0.15 * np.cos(2 * np.pi * f / fs * 1.5) - 0.3 * (f / fs) ** 2
        if with_line:
            fline = F_HI - lo - 60e3            # linea desplazada ~ +13 km/s
            shape = shape * (1 + 0.04 * np.exp(-0.5 * ((f - fline) / 80e3) ** 2))
        self.h = np.sqrt(shape)

    def read(self):
        w = self.rng.standard_normal(self.n) + 1j * self.rng.standard_normal(self.n)
        x = np.fft.ifft(np.fft.fft(w) * self.h) * 200
        return x + (30 + 20j)                    # offset de DC como en un receptor real

    def close(self):
        pass


# ----------------------------------------------------------------------------
# Integracion
# ----------------------------------------------------------------------------
def integrate(src, fs, nfft, t_int):
    """Acumula |FFT|^2 durante t_int segundos. Devuelve PSD (ADC^2/Hz) y estadisticas."""
    win = np.hanning(nfft).astype(np.float32)
    wnorm = fs * np.sum(win.astype(np.float64) ** 2)

    acc = np.zeros(nfft, dtype=np.float64)
    nspec = 0
    peak = 0.0
    pwr_sum = 0.0
    nbuf = 0

    t0 = time.time()
    t_print = t0
    try:
        while True:
            now = time.time()
            if now - t0 >= t_int:
                break
            x = np.asarray(src.read())
            m = (len(x) // nfft) * nfft
            if m == 0:
                continue
            x = x[:m].astype(np.complex64)

            peak = max(peak, float(np.max(np.abs(x.real))), float(np.max(np.abs(x.imag))))
            x -= x.mean()                         # quitar offset de DC
            pwr_sum += float(np.mean(np.abs(x) ** 2))
            nbuf += 1

            X = np.fft.fft(x.reshape(-1, nfft) * win, axis=1)
            acc += np.sum(X.real.astype(np.float64) ** 2 + X.imag.astype(np.float64) ** 2, axis=0)
            nspec += X.shape[0]

            if now - t_print >= 10:
                t_print = now
                print(f"  {now - t0:6.0f} / {t_int:.0f} s   espectros promediados: {nspec}",
                      flush=True)
    except KeyboardInterrupt:
        print("\nInterrumpido: se guarda lo integrado hasta ahora.")

    if nspec == 0:
        sys.exit("No se recibieron muestras.")

    psd = np.fft.fftshift(acc / nspec / wnorm)
    stats = dict(
        nspec=nspec,
        t_wall=time.time() - t0,
        t_eff=nspec * nfft / fs,                   # tiempo de señal realmente integrado
        peak=peak,
        rms=float(np.sqrt(pwr_sum / max(nbuf, 1))),
    )
    return psd, stats


def fix_dc(psd, halfwidth=2):
    """Reemplaza los bins centrales (residuo de DC / fuga del LO) por interpolacion."""
    c = len(psd) // 2
    lo, hi = c - halfwidth, c + halfwidth
    out = psd.copy()
    out[lo:hi + 1] = np.interp(np.arange(lo, hi + 1), [lo - 1, hi + 1], [psd[lo - 1], psd[hi + 1]])
    return out


# ----------------------------------------------------------------------------
# Salidas
# ----------------------------------------------------------------------------
def make_plot(path, freq, vel, psd, ratio, ratio_label, title, show):
    import matplotlib
    if not show:
        matplotlib.use("Agg")
    import matplotlib.pyplot as plt

    nrows = 2 if ratio is not None else 1
    fig, axes = plt.subplots(nrows, 1, figsize=(10, 4.2 * nrows), squeeze=False)
    fmhz = freq / 1e6

    ax = axes[0, 0]
    ax.plot(fmhz, 10 * np.log10(psd), lw=0.8)
    ax.axvline(F_HI / 1e6, color="r", ls="--", lw=0.8, label="HI en reposo (1420.4058 MHz)")
    ax.set_xlabel("Frecuencia [MHz]")
    ax.set_ylabel("PSD [dB, unidades ADC$^2$/Hz]")
    ax.set_title(title)
    ax.grid(alpha=0.3)
    ax.legend(loc="upper right")
    ax.set_xlim(fmhz[0], fmhz[-1])
    sec = ax.secondary_xaxis("top", functions=(lambda f: C_KMS * (F_HI - f * 1e6) / F_HI,
                                               lambda v: (F_HI - v * F_HI / C_KMS) / 1e6))
    sec.set_xlabel("Velocidad radial [km/s] (topocentrica, sin correccion LSR)")

    if ratio is not None:
        ax = axes[1, 0]
        n = len(ratio)
        sl = slice(int(0.05 * n), int(0.95 * n))   # descartar bordes del filtro
        ax.plot(vel[sl], ratio[sl], lw=0.8)
        ax.axvline(0, color="r", ls="--", lw=0.8)
        ax.set_xlabel("Velocidad radial [km/s] (topocentrica, sin correccion LSR)")
        ax.set_ylabel(ratio_label)
        ax.grid(alpha=0.3)
        ax.invert_xaxis() if vel[sl][0] > vel[sl][-1] else None

    fig.tight_layout()
    fig.savefig(path, dpi=130)
    if show:
        plt.show()
    plt.close(fig)


def main():
    a = parse_args()
    if a.nfft < 16 or a.nfft & (a.nfft - 1):
        sys.exit("--nfft debe ser potencia de 2")

    lo = F_HI + a.lo_offset
    bufsize = a.nfft * a.nblocks
    df = a.fs / a.nfft

    print(f"LO = {lo/1e6:.4f} MHz | fs = {a.fs/1e6:.3f} MHz | ganancia = {a.gain:.0f} dB")
    print(f"Resolucion: {df/1e3:.2f} kHz/canal = {df/F_HI*C_KMS:.2f} km/s | "
          f"integracion: {a.time:.0f} s")

    if a.sim:
        print("** MODO SIMULADO **")
        src = SimSource(a.fs, lo, bufsize, with_line=(a.name != "off"))
    else:
        print(f"Conectando a la Pluto en {a.uri} ...")
        src = PlutoSource(a.uri, a.fs, lo, a.gain, bufsize)

    t_start = datetime.now(timezone.utc)
    try:
        psd, st = integrate(src, a.fs, a.nfft, a.time)
    finally:
        src.close()

    psd = fix_dc(psd)
    freq = lo + np.fft.fftshift(np.fft.fftfreq(a.nfft, 1 / a.fs))
    vel = C_KMS * (F_HI - freq) / F_HI            # > 0: se aleja (corrimiento al rojo)

    # --- diagnostico ---
    print(f"\nEspectros promediados: {st['nspec']}")
    print(f"Tiempo de señal integrado: {st['t_eff']:.1f} s de {st['t_wall']:.1f} s de reloj "
          f"({100*st['t_eff']/st['t_wall']:.0f} % ciclo util)")
    print(f"Nivel ADC: rms = {st['rms']:.0f}, pico = {st['peak']:.0f} (fondo de escala 2047)")
    if st["peak"] >= 2000:
        print("  AVISO: el ADC esta saturando -> baja --gain")
    elif st["rms"] < 20:
        print("  AVISO: señal muy baja en el ADC -> sube --gain o revisa LNA/bias-tee")
    print(f"Ruido esperado por canal (radiometro): dT/Tsys = {1/np.sqrt(st['nspec']):.1e}")

    # --- referencia ON/OFF ---
    ratio, ratio_label = None, None
    if a.ref:
        r = np.load(a.ref)
        if len(r["psd"]) != len(psd) or not np.allclose(r["freq"], freq):
            sys.exit("La referencia no coincide en frecuencia/nfft con esta medicion.")
        ratio = psd / r["psd"] - 1.0
        # quitar diferencia de nivel total (ganancia/Tsys) usando canales lejos de la linea
        far = (np.abs(vel) > 150) & (np.abs(freq - lo) < 0.45 * a.fs)
        if far.sum() > 10:
            ratio -= np.median(ratio[far])
        ratio_label = "ON/OFF - 1"
        if a.tsys:
            ratio = ratio * a.tsys
            ratio_label = f"T$_A$ [K]  (Tsys = {a.tsys:.0f} K)"

    # --- guardar ---
    os.makedirs(a.outdir, exist_ok=True)
    name = a.name or ("hi_" + t_start.strftime("%Y%m%d_%H%M%S"))
    base = os.path.join(a.outdir, name)

    np.savez(base + ".npz", freq=freq, vel=vel, psd=psd,
             ratio=ratio if ratio is not None else np.array([]),
             fs=a.fs, lo=lo, gain=a.gain, nfft=a.nfft, nspec=st["nspec"],
             t_eff=st["t_eff"], utc_start=t_start.isoformat())

    cols = [freq, vel, psd, 10 * np.log10(psd)]
    header = "freq_Hz,vel_km_s,psd_adc2_per_Hz,psd_dB"
    if ratio is not None:
        cols.append(ratio)
        header += ",on_off" + ("_K" if a.tsys else "_minus_1")
    np.savetxt(base + ".csv", np.column_stack(cols), delimiter=",", header=header,
               comments="", fmt="%.9g")

    title = (f"{name}  |  {t_start.strftime('%Y-%m-%d %H:%M:%S')} UTC  |  "
             f"t = {st['t_eff']:.0f} s, {st['nspec']} espectros")
    make_plot(base + ".png", freq, vel, psd, ratio, ratio_label, title, a.show)

    print(f"\nGuardado: {base}.npz, .csv, .png")


if __name__ == "__main__":
    main()