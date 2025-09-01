vlib work
vlog -work work ../../tb/tb.v
vlog -work work ../../project/src/top.v -v ../../tb/prim_sim.v
vlog -work work ../../project/src/pwm/pwm.vo -v ../../tb/prim_sim.v
vlog -work work ../../project/src/gowin_rpll/gowin_rpll.v -v ../../tb/prim_sim.v
vsim -novopt work.tb
run -all
