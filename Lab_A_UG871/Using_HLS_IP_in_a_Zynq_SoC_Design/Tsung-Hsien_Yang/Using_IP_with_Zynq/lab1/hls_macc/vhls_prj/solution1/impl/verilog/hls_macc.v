// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_macc_hls_macc,hls_ip_2020_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552000,HLS_SYN_LAT=9,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=575,HLS_SYN_LUT=383,HLS_VERSION=2020_2}" *)

module hls_macc (
        ap_clk,
        ap_rst_n,
        s_axi_HLS_MACC_PERIPH_BUS_AWVALID,
        s_axi_HLS_MACC_PERIPH_BUS_AWREADY,
        s_axi_HLS_MACC_PERIPH_BUS_AWADDR,
        s_axi_HLS_MACC_PERIPH_BUS_WVALID,
        s_axi_HLS_MACC_PERIPH_BUS_WREADY,
        s_axi_HLS_MACC_PERIPH_BUS_WDATA,
        s_axi_HLS_MACC_PERIPH_BUS_WSTRB,
        s_axi_HLS_MACC_PERIPH_BUS_ARVALID,
        s_axi_HLS_MACC_PERIPH_BUS_ARREADY,
        s_axi_HLS_MACC_PERIPH_BUS_ARADDR,
        s_axi_HLS_MACC_PERIPH_BUS_RVALID,
        s_axi_HLS_MACC_PERIPH_BUS_RREADY,
        s_axi_HLS_MACC_PERIPH_BUS_RDATA,
        s_axi_HLS_MACC_PERIPH_BUS_RRESP,
        s_axi_HLS_MACC_PERIPH_BUS_BVALID,
        s_axi_HLS_MACC_PERIPH_BUS_BREADY,
        s_axi_HLS_MACC_PERIPH_BUS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
parameter    C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_HLS_MACC_PERIPH_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_HLS_MACC_PERIPH_BUS_AWVALID;
output   s_axi_HLS_MACC_PERIPH_BUS_AWREADY;
input  [C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_MACC_PERIPH_BUS_AWADDR;
input   s_axi_HLS_MACC_PERIPH_BUS_WVALID;
output   s_axi_HLS_MACC_PERIPH_BUS_WREADY;
input  [C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_MACC_PERIPH_BUS_WDATA;
input  [C_S_AXI_HLS_MACC_PERIPH_BUS_WSTRB_WIDTH - 1:0] s_axi_HLS_MACC_PERIPH_BUS_WSTRB;
input   s_axi_HLS_MACC_PERIPH_BUS_ARVALID;
output   s_axi_HLS_MACC_PERIPH_BUS_ARREADY;
input  [C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_MACC_PERIPH_BUS_ARADDR;
output   s_axi_HLS_MACC_PERIPH_BUS_RVALID;
input   s_axi_HLS_MACC_PERIPH_BUS_RREADY;
output  [C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_MACC_PERIPH_BUS_RDATA;
output  [1:0] s_axi_HLS_MACC_PERIPH_BUS_RRESP;
output   s_axi_HLS_MACC_PERIPH_BUS_BVALID;
input   s_axi_HLS_MACC_PERIPH_BUS_BREADY;
output  [1:0] s_axi_HLS_MACC_PERIPH_BUS_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] a;
wire   [31:0] b;
reg    accum_ap_vld;
wire   [0:0] accum_clr;
reg   [31:0] acc_reg;
reg   [0:0] accum_clr_read_reg_93;
reg  signed [31:0] b_read_reg_98;
reg  signed [31:0] a_read_reg_103;
wire   [31:0] grp_fu_67_p2;
reg   [31:0] mul_ln59_reg_108;
wire    ap_CS_fsm_state8;
wire   [31:0] add_ln59_fu_82_p2;
reg   [31:0] add_ln59_reg_113;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state2;
wire   [31:0] select_ln57_fu_75_p3;
reg   [9:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 acc_reg = 32'd0;
end

hls_macc_HLS_MACC_PERIPH_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_HLS_MACC_PERIPH_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_HLS_MACC_PERIPH_BUS_DATA_WIDTH ))
HLS_MACC_PERIPH_BUS_s_axi_U(
    .AWVALID(s_axi_HLS_MACC_PERIPH_BUS_AWVALID),
    .AWREADY(s_axi_HLS_MACC_PERIPH_BUS_AWREADY),
    .AWADDR(s_axi_HLS_MACC_PERIPH_BUS_AWADDR),
    .WVALID(s_axi_HLS_MACC_PERIPH_BUS_WVALID),
    .WREADY(s_axi_HLS_MACC_PERIPH_BUS_WREADY),
    .WDATA(s_axi_HLS_MACC_PERIPH_BUS_WDATA),
    .WSTRB(s_axi_HLS_MACC_PERIPH_BUS_WSTRB),
    .ARVALID(s_axi_HLS_MACC_PERIPH_BUS_ARVALID),
    .ARREADY(s_axi_HLS_MACC_PERIPH_BUS_ARREADY),
    .ARADDR(s_axi_HLS_MACC_PERIPH_BUS_ARADDR),
    .RVALID(s_axi_HLS_MACC_PERIPH_BUS_RVALID),
    .RREADY(s_axi_HLS_MACC_PERIPH_BUS_RREADY),
    .RDATA(s_axi_HLS_MACC_PERIPH_BUS_RDATA),
    .RRESP(s_axi_HLS_MACC_PERIPH_BUS_RRESP),
    .BVALID(s_axi_HLS_MACC_PERIPH_BUS_BVALID),
    .BREADY(s_axi_HLS_MACC_PERIPH_BUS_BREADY),
    .BRESP(s_axi_HLS_MACC_PERIPH_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .a(a),
    .b(b),
    .accum(add_ln59_reg_113),
    .accum_ap_vld(accum_ap_vld),
    .accum_clr(accum_clr),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

hls_macc_mul_32s_32s_32_7_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_7_1_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(b_read_reg_98),
    .din1(a_read_reg_103),
    .ce(1'b1),
    .dout(grp_fu_67_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        a_read_reg_103 <= a;
        accum_clr_read_reg_93 <= accum_clr;
        b_read_reg_98 <= b;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        acc_reg <= add_ln59_fu_82_p2;
        add_ln59_reg_113 <= add_ln59_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln59_reg_108 <= grp_fu_67_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        accum_ap_vld = 1'b1;
    end else begin
        accum_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln59_fu_82_p2 = (select_ln57_fu_75_p3 + mul_ln59_reg_108);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign select_ln57_fu_75_p3 = ((accum_clr_read_reg_93[0:0] == 1'b1) ? 32'd0 : acc_reg);

endmodule //hls_macc
