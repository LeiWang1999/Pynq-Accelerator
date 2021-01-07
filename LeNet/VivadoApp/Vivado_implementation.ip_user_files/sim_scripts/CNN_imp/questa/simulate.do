onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib CNN_imp_opt

do {wave.do}

view wave
view structure
view signals

do {CNN_imp.udo}

run -all

quit -force
