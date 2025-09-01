//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1N-LV9QN88C6/I5
//Device: GW1N-9
//Device Version: C
//Created Time: Tue Apr 15 15:15:46 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	PWM_Top your_instance_name(
		.fclk(fclk), //input fclk
		.pclk(pclk), //input pclk
		.pwm(pwm), //output pwm
		.pwm_en(pwm_en), //input pwm_en
		.up(up), //input up
		.down(down), //input down
		.duty_cycle(duty_cycle), //input [9:0] duty_cycle
		.duty_cycle_update(duty_cycle_update), //input duty_cycle_update
		.initial_cycle(initial_cycle), //input [9:0] initial_cycle
		.initial_duty_cycle(initial_duty_cycle), //input [9:0] initial_duty_cycle
		.initial_update(initial_update) //input initial_update
	);

//--------Copy end-------------------
