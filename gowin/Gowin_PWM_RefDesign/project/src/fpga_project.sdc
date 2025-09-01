//Copyright (C)2014-2025 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2025-04-15 15:23:00
create_clock -name tck_pad_i -period 50 -waveform {0 25} [get_ports {tck_pad_i}]
create_clock -name pclk -period 10 -waveform {0 5} [get_pins {u_CLKDIV/CLKOUT}]
