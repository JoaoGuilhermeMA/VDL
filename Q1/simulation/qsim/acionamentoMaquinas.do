onerror {quit -f}
vlib work
vlog -work work acionamentoMaquinas.vo
vlog -work work acionamentoMaquinas.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.acionamentoMaquinas_vlg_vec_tst
vcd file -direction acionamentoMaquinas.msim.vcd
vcd add -internal acionamentoMaquinas_vlg_vec_tst/*
vcd add -internal acionamentoMaquinas_vlg_vec_tst/i1/*
add wave /*
run -all
