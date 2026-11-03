#!/usr/bin/env python3
"""
===============================================================================
Backend Radioastronómico de 21 cm - Captura Espectral RFSoC 4x2
===============================================================================
Descripción:
    Este script inicializa el Bitstream en la PL (FPGA), gestiona las transferencias 
    AXI DMA S2MM (Stream-to-Memory-Mapped) desde el módulo fft_power_calculator 
    hacia la memoria DDR del procesador ARM, realiza acumulación espectral para 
    reducir el nivel de ruido (radiometría) y guarda/grafica la potencia espectral.
===============================================================================
"""

import os
import time
import numpy as np
import matplotlib.pyplot as plt
from pynq import Overlay, allocate

# =============================================================================
# 1. CONFIGURACIÓN DEL SISTEMA Y PARÁMETROS ESPECTRALES
# =============================================================================
BITSTREAM_NAME = "rfsoc_radiotelescopio.bit"  # Requiere 'rfsoc_radiotelescopio.hwh' en el mismo directorio
FFT_SIZE = 4096                               # Puntos de la FFT
CENTER_FREQ_MHZ = 1420.405751                 # Frecuencia NCO central (Línea HI)
SAMPLE_RATE_MSPS = 250.0                      # Tasa efectiva I/Q tras la decimación 8x (MHz)

# =============================================================================
# 2. CARGA DEL OVERLAY EN LA FPGA
# =============================================================================
print(f"[INFO] Cargando Bitstream '{BITSTREAM_NAME}' en la FPGA...")
if not os.path.exists(BITSTREAM_NAME):
    raise FileNotFoundError(f"No se encontró el archivo {BITSTREAM_NAME} o su .hwh asociado.")

ol = Overlay(BITSTREAM_NAME)
print("[OK] FPGA configurada correctamente.")

# Verificar bloques IP registrados por PYNQ
dma = ol.axi_dma_0.recvchannel

# =============================================================================
# 3. FUNCIONES DE CAPTURA Y PROCESAMIENTO
# =============================================================================
def capture_single_frame(dma_channel, fft_points=FFT_SIZE):
    """
    Captura una única trama AXI-Stream de 4096 muestras de potencia de la FPGA.
    """
    # Reservar bloque de memoria física contigua (16 KB)
    buffer = allocate(shape=(fft_points,), dtype=np.uint32)
    
    # Iniciar transferencia AXI DMA S2MM
    dma_channel.transfer(buffer)
    dma_channel.wait()  # Esperar que la FPGA envíe TLAST al completar 4096 muestras
    
    # Copiar datos a un arreglo estándar de NumPy
    data = np.array(buffer, copy=True)
    
    # Liberar buffer de memoria DMA contigua
    buffer.freebuffer()
    return data

def accumulate_spectra(dma_channel, num_integrations=100, fft_points=FFT_SIZE):
    """
    Acumula M espectros de potencia consecutivos para incrementar la relación
    señal a ruido (SNR) según la ecuación del radiómetro: SNR ~ sqrt(N_integraciones).
    """
    print(f"[INFO] Iniciando integración de {num_integrations} tramas espectrales...")
    accumulated_power = np.zeros(fft_points, dtype=np.float64)
    
    buffer = allocate(shape=(fft_points,), dtype=np.uint32)
    
    start_time = time.time()
    for i in range(num_integrations):
        dma_channel.transfer(buffer)
        dma_channel.wait()
        accumulated_power += buffer
    
    elapsed_time = time.time() - start_time
    buffer.freebuffer()
    
    mean_spectrum = accumulated_power / num_integrations
    print(f"[OK] Integración completada en {elapsed_time:.3f} segundos ({num_integrations / elapsed_time:.1f} FPS).")
    return mean_spectrum

# =============================================================================
# 4. EJECUCIÓN PRINCIPAL
# =============================================================================
if __name__ == "__main__":
    # N° de tramas a promediar (Ajustar según necesidad de observación)
    INTEGRATIONS = 500 

    # Captura espectral integrada
    power_spectrum = accumulate_spectra(dma, num_integrations=INTEGRATIONS)

    # Reordenar componentes de frecuencia (Shift DC a la mitad del espectro)
    power_spectrum_shifted = np.fft.fftshift(power_spectrum)

    # Vector de Frecuencias Reales (MHz)
    freqs = np.fft.fftshift(np.fft.fftfreq(FFT_SIZE, d=1.0/(SAMPLE_RATE_MSPS * 1e6))) / 1e6
    absolute_freqs = CENTER_FREQ_MHZ + freqs

    # Convertir potencia lineal a escala Logarítmica (dB arbitrarios)
    power_dB = 10 * np.log10(np.maximum(power_spectrum_shifted, 1.0))

    # Guardar resultados numéricos para la entrega
    output_csv = "espectro_21cm_captura.csv"
    np.savetxt(output_csv, np.column_stack((absolute_freqs, power_spectrum_shifted, power_dB)),
               delimiter=",", header="Frecuencia_MHz,Potencia_Lineal,Potencia_dB", comments="")
    print(f"[INFO] Datos guardados en '{output_csv}'.")

    # Generación y guardado de la gráfica espectral
    plt.figure(figsize=(10, 5))
    plt.plot(absolute_freqs, power_dB, color='navy', linewidth=1.2)
    plt.axvline(x=1420.405751, color='red', linestyle='--', label='Línea H I (1420.406 MHz)')
    plt.title(f"Backend RFSoC - Perfil Espectral 21 cm (Integración: {INTEGRATIONS} tramas)")
    plt.xlabel("Frecuencia (MHz)")
    plt.ylabel("Potencia Relativa (dB)")
    plt.grid(True, which='both', linestyle=':', alpha=0.6)
    plt.legend()
    
    output_png = "espectro_21cm_plot.png"
    plt.savefig(output_png, dpi=300, bbox_inches='tight')
    print(f"[INFO] Gráfica generada y guardada como '{output_png}'.")