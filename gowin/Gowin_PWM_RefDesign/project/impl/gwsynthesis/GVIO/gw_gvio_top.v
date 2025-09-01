module gw_gvio(
    pclk,
    pwm_en,
    up,
    down,
    \initial_cycle[9] ,
    \initial_cycle[8] ,
    \initial_cycle[7] ,
    \initial_cycle[6] ,
    \initial_cycle[5] ,
    \initial_cycle[4] ,
    \initial_cycle[3] ,
    \initial_cycle[2] ,
    \initial_cycle[1] ,
    \initial_cycle[0] ,
    \initial_duty_cycle[9] ,
    \initial_duty_cycle[8] ,
    \initial_duty_cycle[7] ,
    \initial_duty_cycle[6] ,
    \initial_duty_cycle[5] ,
    \initial_duty_cycle[4] ,
    \initial_duty_cycle[3] ,
    \initial_duty_cycle[2] ,
    \initial_duty_cycle[1] ,
    \initial_duty_cycle[0] ,
    initial_update,
    duty_cycle_update,
    \duty_cycle[9] ,
    \duty_cycle[8] ,
    \duty_cycle[7] ,
    \duty_cycle[6] ,
    \duty_cycle[5] ,
    \duty_cycle[4] ,
    \duty_cycle[3] ,
    \duty_cycle[2] ,
    \duty_cycle[1] ,
    \duty_cycle[0] ,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;
input pclk;
inout pwm_en;
inout up;
inout down;
inout \initial_cycle[9] ;
inout \initial_cycle[8] ;
inout \initial_cycle[7] ;
inout \initial_cycle[6] ;
inout \initial_cycle[5] ;
inout \initial_cycle[4] ;
inout \initial_cycle[3] ;
inout \initial_cycle[2] ;
inout \initial_cycle[1] ;
inout \initial_cycle[0] ;
inout \initial_duty_cycle[9] ;
inout \initial_duty_cycle[8] ;
inout \initial_duty_cycle[7] ;
inout \initial_duty_cycle[6] ;
inout \initial_duty_cycle[5] ;
inout \initial_duty_cycle[4] ;
inout \initial_duty_cycle[3] ;
inout \initial_duty_cycle[2] ;
inout \initial_duty_cycle[1] ;
inout \initial_duty_cycle[0] ;
inout initial_update;
inout duty_cycle_update;
inout \duty_cycle[9] ;
inout \duty_cycle[8] ;
inout \duty_cycle[7] ;
inout \duty_cycle[6] ;
inout \duty_cycle[5] ;
inout \duty_cycle[4] ;
inout \duty_cycle[3] ;
inout \duty_cycle[2] ;
inout \duty_cycle[1] ;
inout \duty_cycle[0] ;

wire pclk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire [9:0] control0;
wire gvio_jtag_tck;
wire gvio_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gvio_jtag_tdi;
wire tdo_er1;
wire tdo_select;

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_pad_i),
    .tck_pad_i(tck_pad_i),
    .tdi_pad_i(tdi_pad_i),
    .tdo_pad_o(tdo_pad_o),
    .tck_o(gvio_jtag_tck),
    .test_logic_reset_o(gvio_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gvio_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_gvio_con_top  u_gvio_icon_top(
    .tck_i(gvio_jtag_tck),
    .tdi_i(gvio_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gvio_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr),
    .tdo_select(tdo_select)
);

gw_gvio_top_0  u_gvio0_top(
    .control(control0[9:0]),
    .probe_out0(pwm_en),
    .probe_out1({up,down}),
    .probe_out2({\initial_cycle[9] ,\initial_cycle[8] ,\initial_cycle[7] ,\initial_cycle[6] ,\initial_cycle[5] ,\initial_cycle[4] ,\initial_cycle[3] ,\initial_cycle[2] ,\initial_cycle[1] ,\initial_cycle[0] }),
    .probe_out3({\initial_duty_cycle[9] ,\initial_duty_cycle[8] ,\initial_duty_cycle[7] ,\initial_duty_cycle[6] ,\initial_duty_cycle[5] ,\initial_duty_cycle[4] ,\initial_duty_cycle[3] ,\initial_duty_cycle[2] ,\initial_duty_cycle[1] ,\initial_duty_cycle[0] }),
    .probe_out4(initial_update),
    .probe_out5(duty_cycle_update),
    .probe_out6({\duty_cycle[9] ,\duty_cycle[8] ,\duty_cycle[7] ,\duty_cycle[6] ,\duty_cycle[5] ,\duty_cycle[4] ,\duty_cycle[3] ,\duty_cycle[2] ,\duty_cycle[1] ,\duty_cycle[0] }),
    .clk_i(pclk)
);

endmodule
