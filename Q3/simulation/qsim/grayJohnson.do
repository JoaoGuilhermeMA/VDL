onerror {quit -f}
vlib work
vlog -work work grayJohnson.vo
vlog -work work grayJohnson.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.grayJohnson_vlg_vec_tst
vcd file -direction grayJohnson.msim.vcd
vcd add -internal grayJohnson_vlg_vec_tst/*
vcd add -internal grayJohnson_vlg_vec_tst/i1/*
add wave /*
run -all
