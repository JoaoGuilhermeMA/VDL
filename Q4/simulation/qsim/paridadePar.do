onerror {quit -f}
vlib work
vlog -work work paridadePar.vo
vlog -work work paridadePar.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.paridadePar_vlg_vec_tst
vcd file -direction paridadePar.msim.vcd
vcd add -internal paridadePar_vlg_vec_tst/*
vcd add -internal paridadePar_vlg_vec_tst/i1/*
add wave /*
run -all
