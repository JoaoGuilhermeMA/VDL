onerror {quit -f}
vlib work
vlog -work work BCDDoisEntreCinco.vo
vlog -work work BCDDoisEntreCinco.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BCDDoisEntreCinco_vlg_vec_tst
vcd file -direction BCDDoisEntreCinco.msim.vcd
vcd add -internal BCDDoisEntreCinco_vlg_vec_tst/*
vcd add -internal BCDDoisEntreCinco_vlg_vec_tst/i1/*
add wave /*
run -all
