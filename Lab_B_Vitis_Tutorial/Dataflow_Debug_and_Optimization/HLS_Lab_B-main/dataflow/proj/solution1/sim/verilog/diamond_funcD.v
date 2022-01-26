// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module diamond_funcD (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        vecOut_address0,
        vecOut_ce0,
        vecOut_we0,
        vecOut_d0,
        vecOut_address1,
        vecOut_ce1,
        vecOut_we1,
        vecOut_d1,
        in1_address0,
        in1_ce0,
        in1_q0,
        in1_address1,
        in1_ce1,
        in1_q1,
        in2_address0,
        in2_ce0,
        in2_q0,
        in2_address1,
        in2_ce1,
        in2_q1
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] vecOut_address0;
output   vecOut_ce0;
output   vecOut_we0;
output  [7:0] vecOut_d0;
output  [6:0] vecOut_address1;
output   vecOut_ce1;
output   vecOut_we1;
output  [7:0] vecOut_d1;
output  [6:0] in1_address0;
output   in1_ce0;
input  [7:0] in1_q0;
output  [6:0] in1_address1;
output   in1_ce1;
input  [7:0] in1_q1;
output  [6:0] in2_address0;
output   in2_ce0;
input  [6:0] in2_q0;
output  [6:0] in2_address1;
output   in2_ce1;
input  [6:0] in2_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg vecOut_ce0;
reg vecOut_we0;
reg vecOut_ce1;
reg vecOut_we1;
reg in1_ce0;
reg in1_ce1;
reg in2_ce0;
reg in2_ce1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln67_fu_153_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [6:0] i1_reg_115;
wire   [6:0] i_fu_129_p2;
reg   [6:0] i_reg_191;
wire   [63:0] zext_ln67_fu_135_p1;
reg   [63:0] zext_ln67_reg_196;
wire   [63:0] zext_ln71_fu_147_p1;
reg   [63:0] zext_ln71_reg_211;
reg   [0:0] icmp_ln67_reg_226;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [6:0] ap_phi_mux_i1_phi_fu_119_p6;
wire    ap_block_pp0_stage0;
wire   [6:0] or_ln67_fu_141_p2;
wire   [7:0] shl_ln_fu_159_p3;
wire   [7:0] shl_ln71_1_fu_174_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_113;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln67_reg_226 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln67_reg_226 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i1_reg_115 <= i_reg_191;
    end else if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln67_reg_226 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        i1_reg_115 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_191 <= i_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln67_reg_226 <= icmp_ln67_fu_153_p2;
        zext_ln67_reg_196[6 : 0] <= zext_ln67_fu_135_p1[6 : 0];
        zext_ln71_reg_211[6 : 1] <= zext_ln71_fu_147_p1[6 : 1];
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln67_reg_226 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_113)) begin
        if ((icmp_ln67_reg_226 == 1'd0)) begin
            ap_phi_mux_i1_phi_fu_119_p6 = 7'd0;
        end else if ((icmp_ln67_reg_226 == 1'd1)) begin
            ap_phi_mux_i1_phi_fu_119_p6 = i_reg_191;
        end else begin
            ap_phi_mux_i1_phi_fu_119_p6 = i1_reg_115;
        end
    end else begin
        ap_phi_mux_i1_phi_fu_119_p6 = i1_reg_115;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln67_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in1_ce0 = 1'b1;
    end else begin
        in1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in1_ce1 = 1'b1;
    end else begin
        in1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in2_ce0 = 1'b1;
    end else begin
        in2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in2_ce1 = 1'b1;
    end else begin
        in2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vecOut_ce0 = 1'b1;
    end else begin
        vecOut_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vecOut_ce1 = 1'b1;
    end else begin
        vecOut_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vecOut_we0 = 1'b1;
    end else begin
        vecOut_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vecOut_we1 = 1'b1;
    end else begin
        vecOut_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_113 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign i_fu_129_p2 = (ap_phi_mux_i1_phi_fu_119_p6 + 7'd2);

assign icmp_ln67_fu_153_p2 = ((i_fu_129_p2 < 7'd100) ? 1'b1 : 1'b0);

assign in1_address0 = zext_ln71_fu_147_p1;

assign in1_address1 = zext_ln67_fu_135_p1;

assign in2_address0 = zext_ln71_fu_147_p1;

assign in2_address1 = zext_ln67_fu_135_p1;

assign or_ln67_fu_141_p2 = (ap_phi_mux_i1_phi_fu_119_p6 | 7'd1);

assign shl_ln71_1_fu_174_p3 = {{in2_q0}, {1'd0}};

assign shl_ln_fu_159_p3 = {{in2_q1}, {1'd0}};

assign vecOut_address0 = zext_ln71_reg_211;

assign vecOut_address1 = zext_ln67_reg_196;

assign vecOut_d0 = (in1_q0 + shl_ln71_1_fu_174_p3);

assign vecOut_d1 = (in1_q1 + shl_ln_fu_159_p3);

assign zext_ln67_fu_135_p1 = ap_phi_mux_i1_phi_fu_119_p6;

assign zext_ln71_fu_147_p1 = or_ln67_fu_141_p2;

always @ (posedge ap_clk) begin
    zext_ln67_reg_196[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln71_reg_211[0] <= 1'b1;
    zext_ln71_reg_211[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //diamond_funcD
