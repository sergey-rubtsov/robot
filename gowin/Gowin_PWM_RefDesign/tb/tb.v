`timescale 1ns/1ns

module tb;

GSR GSR(1);

reg clk = 0;
initial forever #10 clk = ~clk;
wire pwm;
wire pclk;

top dut (
    .clk(clk), 
    .pwm(pwm),
    .pclk(pclk)

);

`ifdef FSDB
    initial begin
        $fsdbDumpfile("tb.fsdb");
        $fsdbDumpvars;
    end
`endif


initial begin
    dut.pwm_en             = 0 ;
    dut.up                 = 0 ;
    dut.down               = 0 ;
    dut.initial_cycle      = 0 ;
    dut.initial_duty_cycle = 0 ;
    dut.initial_update     = 0 ;
    dut.duty_cycle_update  = 0 ;
    dut.duty_cycle         = 0 ;
end


initial begin
    wait(dut.fclk_lock == 1'b1);
    #100;
    //Initialize PWM width
    @(posedge pclk);
    dut.initial_cycle <= 10'h100;
    dut.initial_duty_cycle <= 10'h10;
    @(posedge pclk);
    dut.initial_update <= 1'b1;
    @(posedge pclk);
    dut.initial_update <= 1'b0;
    repeat(6)@(posedge pclk);
    dut.pwm_en <= 1'b1;
    #1000;
    //Increase 1 step width
    @(posedge pclk);
    dut.up <= 1'b1;
    @(posedge pclk);
    dut.up <= 1'b0;
    #1000;
    //Update pwm width
    @(posedge pclk);
    dut.duty_cycle <= 10'h20;
    @(posedge pclk);
    dut.duty_cycle_update <= 1'b1;
    @(posedge pclk);
    dut.duty_cycle_update <= 1'b0;
    #1000;
    `ifdef FSDB
        $finish;
    `else
        $stop;
    `endif
end


endmodule
    
    
