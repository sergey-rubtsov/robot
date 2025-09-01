
module top(
    input clk, 
    output pwm,
    output pclk

);
wire fclk_lock;
wire fclk;


reg pwm_en;
reg up;
reg down;
reg [9:0] initial_cycle;
reg [9:0] initial_duty_cycle;
reg initial_update;
reg duty_cycle_update;
reg [9:0] duty_cycle;

   
Gowin_rPLL Gowin_PLL(
    .clkout(fclk), 
    .lock(fclk_lock), 
    .clkin(clk) 
);


CLKDIV  #(.DIV_MODE("4")) u_CLKDIV(
    .CLKOUT(pclk), 
    .CALIB(0), 
    .HCLKIN(fclk), 
    .RESETN(fclk_lock)
    ); 



PWM_Top dut(
	.fclk(fclk),
	.pclk(pclk),
	.pwm(pwm),
	.pwm_en(pwm_en), 
	.up(up),
	.down(down), 
	.duty_cycle(duty_cycle), 
	.duty_cycle_update(duty_cycle_update), 
	.initial_cycle(initial_cycle), 
	.initial_duty_cycle(initial_duty_cycle), 
	.initial_update(initial_update) 
);


endmodule