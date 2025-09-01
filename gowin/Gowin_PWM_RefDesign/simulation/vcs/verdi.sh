#!/bin/bash
#
#
#
verdi \
../../tb/tb.v  \
../../project/src/top.v \
../../project/src/pwm/pwm.vo  \
../../project/src/gowin_rpll/gowin_rpll.v  \
-v ../../tb/prim_sim.v  \
-ssf tb.fsdb &





