#!/bin/bash
#
#
#
vcs -R -full64 -fsdb -sverilog  +define+FSDB \
../../tb/tb.v  \
../../project/src/top.v \
../../project/src/pwm/pwm.vo  \
../../project/src/gowin_rpll/gowin_rpll.v  \
-v ../../tb/prim_sim.v





