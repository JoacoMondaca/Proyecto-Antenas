onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rfsoc_radiotelescopio_opt

do {wave.do}

view wave
view structure
view signals

do {rfsoc_radiotelescopio.udo}

run -all

quit -force
