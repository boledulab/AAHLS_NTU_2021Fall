// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_xfft2real_Loop_realfft_be_stream_output_proc6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        real_spectrum_lo_dout,
        real_spectrum_lo_empty_n,
        real_spectrum_lo_read,
        real_spectrum_hi_dout,
        real_spectrum_hi_empty_n,
        real_spectrum_hi_read,
        dout_V_TREADY,
        dout_V_TDATA,
        dout_V_TVALID
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
input  [31:0] real_spectrum_lo_dout;
input   real_spectrum_lo_empty_n;
output   real_spectrum_lo_read;
input  [31:0] real_spectrum_hi_dout;
input   real_spectrum_hi_empty_n;
output   real_spectrum_hi_read;
input   dout_V_TREADY;
output  [47:0] dout_V_TDATA;
output   dout_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg real_spectrum_lo_read;
reg real_spectrum_hi_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] dout_val_last_V_fu_106_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg   [0:0] tmp_reg_131;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_enable_reg_pp0_iter1;
wire    regslice_both_dout_V_U_apdone_blk;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp0_stage0_11001;
reg    dout_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    real_spectrum_lo_blk_n;
reg    real_spectrum_hi_blk_n;
reg   [8:0] i1_reg_67;
wire   [8:0] i_fu_92_p2;
reg   [8:0] i_reg_126;
reg   [0:0] dout_val_last_V_reg_135;
reg   [0:0] dout_val_last_V_reg_135_pp0_iter1_reg;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [8:0] ap_phi_mux_i1_phi_fu_71_p6;
reg   [31:0] ap_phi_mux_dout_val_i_0_0_0_in_phi_fu_84_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_dout_val_i_0_0_0_in_reg_81;
reg    ap_block_pp0_stage0_01001;
wire   [32:0] tmp_4_fu_112_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [47:0] dout_V_TDATA_int_regslice;
reg    dout_V_TVALID_int_regslice;
wire    dout_V_TREADY_int_regslice;
wire    regslice_both_dout_V_U_vld_out;
reg    ap_condition_83;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

hls_xfft2real_regslice_both #(
    .DataWidth( 48 ))
regslice_both_dout_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(dout_V_TDATA_int_regslice),
    .vld_in(dout_V_TVALID_int_regslice),
    .ack_in(dout_V_TREADY_int_regslice),
    .data_out(dout_V_TDATA),
    .vld_out(regslice_both_dout_V_U_vld_out),
    .ack_out(dout_V_TREADY),
    .apdone_blk(regslice_both_dout_V_U_apdone_blk)
);

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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (dout_val_last_V_reg_135_pp0_iter1_reg == 1'd1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (dout_val_last_V_reg_135 == 1'd0))) begin
        i1_reg_67 <= i_reg_126;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (dout_val_last_V_reg_135 == 1'd1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        i1_reg_67 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_val_last_V_reg_135 <= dout_val_last_V_fu_106_p2;
        dout_val_last_V_reg_135_pp0_iter1_reg <= dout_val_last_V_reg_135;
        tmp_reg_131 <= ap_phi_mux_i1_phi_fu_71_p6[32'd8];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_126 <= i_fu_92_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (dout_val_last_V_reg_135_pp0_iter1_reg == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if ((tmp_reg_131 == 1'd1)) begin
        ap_phi_mux_dout_val_i_0_0_0_in_phi_fu_84_p4 = real_spectrum_hi_dout;
    end else if ((tmp_reg_131 == 1'd0)) begin
        ap_phi_mux_dout_val_i_0_0_0_in_phi_fu_84_p4 = real_spectrum_lo_dout;
    end else begin
        ap_phi_mux_dout_val_i_0_0_0_in_phi_fu_84_p4 = ap_phi_reg_pp0_iter1_dout_val_i_0_0_0_in_reg_81;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_83)) begin
        if ((dout_val_last_V_reg_135 == 1'd1)) begin
            ap_phi_mux_i1_phi_fu_71_p6 = 9'd0;
        end else if ((dout_val_last_V_reg_135 == 1'd0)) begin
            ap_phi_mux_i1_phi_fu_71_p6 = i_reg_126;
        end else begin
            ap_phi_mux_i1_phi_fu_71_p6 = i1_reg_67;
        end
    end else begin
        ap_phi_mux_i1_phi_fu_71_p6 = i1_reg_67;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (dout_val_last_V_fu_106_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dout_V_TDATA_blk_n = dout_V_TREADY_int_regslice;
    end else begin
        dout_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_TVALID_int_regslice = 1'b1;
    end else begin
        dout_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_131 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_hi_blk_n = real_spectrum_hi_empty_n;
    end else begin
        real_spectrum_hi_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_131 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_hi_read = 1'b1;
    end else begin
        real_spectrum_hi_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_131 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_lo_blk_n = real_spectrum_lo_empty_n;
    end else begin
        real_spectrum_lo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_131 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_spectrum_lo_read = 1'b1;
    end else begin
        real_spectrum_lo_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dout_V_U_apdone_blk == 1'b1) | (dout_V_TREADY_int_regslice == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((dout_V_TREADY_int_regslice == 1'b0) | ((real_spectrum_hi_empty_n == 1'b0) & (tmp_reg_131 == 1'd1)) | ((tmp_reg_131 == 1'd0) & (real_spectrum_lo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dout_V_U_apdone_blk == 1'b1) | (dout_V_TREADY_int_regslice == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((dout_V_TREADY_int_regslice == 1'b0) | ((real_spectrum_hi_empty_n == 1'b0) & (tmp_reg_131 == 1'd1)) | ((tmp_reg_131 == 1'd0) & (real_spectrum_lo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dout_V_U_apdone_blk == 1'b1) | (dout_V_TREADY_int_regslice == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((dout_V_TREADY_int_regslice == 1'b0) | ((real_spectrum_hi_empty_n == 1'b0) & (tmp_reg_131 == 1'd1)) | ((tmp_reg_131 == 1'd0) & (real_spectrum_lo_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((dout_V_TREADY_int_regslice == 1'b0) | ((real_spectrum_hi_empty_n == 1'b0) & (tmp_reg_131 == 1'd1)) | ((tmp_reg_131 == 1'd0) & (real_spectrum_lo_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((regslice_both_dout_V_U_apdone_blk == 1'b1) | (dout_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_condition_83 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter1_dout_val_i_0_0_0_in_reg_81 = 'bx;

assign dout_V_TDATA_int_regslice = tmp_4_fu_112_p3;

assign dout_V_TVALID = regslice_both_dout_V_U_vld_out;

assign dout_val_last_V_fu_106_p2 = ((ap_phi_mux_i1_phi_fu_71_p6 == 9'd511) ? 1'b1 : 1'b0);

assign i_fu_92_p2 = (ap_phi_mux_i1_phi_fu_71_p6 + 9'd1);

assign tmp_4_fu_112_p3 = {{dout_val_last_V_reg_135}, {ap_phi_mux_dout_val_i_0_0_0_in_phi_fu_84_p4}};

endmodule //hls_xfft2real_Loop_realfft_be_stream_output_proc6
