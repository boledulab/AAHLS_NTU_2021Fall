// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="example_example,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7v585t-ffg1761-2,HLS_INPUT_CLOCK=13.333000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.507000,HLS_SYN_LAT=29,HLS_SYN_TPT=25,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=764,HLS_SYN_LUT=1181,HLS_VERSION=2020_2}" *)

module example (
        A_V_dout,
        A_V_empty_n,
        A_V_read,
        B_V_din,
        B_V_full_n,
        B_V_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] A_V_dout;
input   A_V_empty_n;
output   A_V_read;
output  [31:0] B_V_din;
input   B_V_full_n;
output   B_V_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    proc_1_U0_ap_start;
wire    proc_1_U0_start_out;
wire    proc_1_U0_start_write;
wire    proc_1_U0_A_V_read;
wire   [31:0] proc_1_U0_B_din;
wire    proc_1_U0_B_write;
wire   [31:0] proc_1_U0_C_din;
wire    proc_1_U0_C_write;
wire    proc_1_U0_ap_done;
wire    proc_1_U0_ap_ready;
wire    proc_1_U0_ap_idle;
wire    proc_1_U0_ap_continue;
wire    proc_2_U0_A_read;
wire    proc_2_U0_B_read;
wire   [31:0] proc_2_U0_B_V_din;
wire    proc_2_U0_B_V_write;
wire    proc_2_U0_ap_start;
wire    proc_2_U0_ap_done;
wire    proc_2_U0_ap_ready;
wire    proc_2_U0_ap_idle;
wire    proc_2_U0_ap_continue;
wire    ap_sync_continue;
wire    data_channel1_full_n;
wire   [31:0] data_channel1_dout;
wire    data_channel1_empty_n;
wire    data_channel2_full_n;
wire   [31:0] data_channel2_dout;
wire    data_channel2_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_proc_2_U0_din;
wire    start_for_proc_2_U0_full_n;
wire   [0:0] start_for_proc_2_U0_dout;
wire    start_for_proc_2_U0_empty_n;
wire    proc_2_U0_start_full_n;
wire    proc_2_U0_start_write;

example_proc_1 proc_1_U0(
    .ap_start(proc_1_U0_ap_start),
    .start_full_n(start_for_proc_2_U0_full_n),
    .start_out(proc_1_U0_start_out),
    .start_write(proc_1_U0_start_write),
    .A_V_dout(A_V_dout),
    .A_V_empty_n(A_V_empty_n),
    .A_V_read(proc_1_U0_A_V_read),
    .B_din(proc_1_U0_B_din),
    .B_full_n(data_channel1_full_n),
    .B_write(proc_1_U0_B_write),
    .C_din(proc_1_U0_C_din),
    .C_full_n(data_channel2_full_n),
    .C_write(proc_1_U0_C_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(proc_1_U0_ap_done),
    .ap_ready(proc_1_U0_ap_ready),
    .ap_idle(proc_1_U0_ap_idle),
    .ap_continue(proc_1_U0_ap_continue)
);

example_proc_2 proc_2_U0(
    .A_dout(data_channel1_dout),
    .A_empty_n(data_channel1_empty_n),
    .A_read(proc_2_U0_A_read),
    .B_dout(data_channel2_dout),
    .B_empty_n(data_channel2_empty_n),
    .B_read(proc_2_U0_B_read),
    .B_V_din(proc_2_U0_B_V_din),
    .B_V_full_n(B_V_full_n),
    .B_V_write(proc_2_U0_B_V_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(proc_2_U0_ap_start),
    .ap_done(proc_2_U0_ap_done),
    .ap_ready(proc_2_U0_ap_ready),
    .ap_idle(proc_2_U0_ap_idle),
    .ap_continue(proc_2_U0_ap_continue)
);

example_fifo_w32_d10_S_x0 data_channel1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(proc_1_U0_B_din),
    .if_full_n(data_channel1_full_n),
    .if_write(proc_1_U0_B_write),
    .if_dout(data_channel1_dout),
    .if_empty_n(data_channel1_empty_n),
    .if_read(proc_2_U0_A_read)
);

example_fifo_w32_d1_S_x0 data_channel2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(proc_1_U0_C_din),
    .if_full_n(data_channel2_full_n),
    .if_write(proc_1_U0_C_write),
    .if_dout(data_channel2_dout),
    .if_empty_n(data_channel2_empty_n),
    .if_read(proc_2_U0_B_read)
);

example_start_for_proc_2_U0 start_for_proc_2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_proc_2_U0_din),
    .if_full_n(start_for_proc_2_U0_full_n),
    .if_write(proc_1_U0_start_write),
    .if_dout(start_for_proc_2_U0_dout),
    .if_empty_n(start_for_proc_2_U0_empty_n),
    .if_read(proc_2_U0_ap_ready)
);

assign A_V_read = proc_1_U0_A_V_read;

assign B_V_din = proc_2_U0_B_V_din;

assign B_V_write = proc_2_U0_B_V_write;

assign ap_done = proc_2_U0_ap_done;

assign ap_idle = (proc_2_U0_ap_idle & proc_1_U0_ap_idle);

assign ap_ready = proc_1_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = proc_2_U0_ap_done;

assign ap_sync_ready = proc_1_U0_ap_ready;

assign proc_1_U0_ap_continue = 1'b1;

assign proc_1_U0_ap_start = ap_start;

assign proc_2_U0_ap_continue = 1'b1;

assign proc_2_U0_ap_start = start_for_proc_2_U0_empty_n;

assign proc_2_U0_start_full_n = 1'b1;

assign proc_2_U0_start_write = 1'b0;

assign start_for_proc_2_U0_din = 1'b1;

endmodule //example
