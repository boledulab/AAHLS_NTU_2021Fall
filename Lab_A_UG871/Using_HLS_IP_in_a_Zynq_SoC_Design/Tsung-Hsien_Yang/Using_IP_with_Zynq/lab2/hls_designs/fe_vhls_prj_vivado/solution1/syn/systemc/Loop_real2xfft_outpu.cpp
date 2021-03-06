// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_real2xfft_outpu.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_real2xfft_outpu::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_real2xfft_outpu::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Loop_real2xfft_outpu::ap_ST_fsm_state1 = "1";
const sc_lv<2> Loop_real2xfft_outpu::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<32> Loop_real2xfft_outpu::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool Loop_real2xfft_outpu::ap_const_boolean_1 = true;
const sc_lv<1> Loop_real2xfft_outpu::ap_const_lv1_1 = "1";
const sc_lv<32> Loop_real2xfft_outpu::ap_const_lv32_1 = "1";
const bool Loop_real2xfft_outpu::ap_const_boolean_0 = false;
const sc_lv<1> Loop_real2xfft_outpu::ap_const_lv1_0 = "0";
const sc_lv<10> Loop_real2xfft_outpu::ap_const_lv10_0 = "0000000000";
const sc_lv<10> Loop_real2xfft_outpu::ap_const_lv10_3FE = "1111111110";
const sc_lv<11> Loop_real2xfft_outpu::ap_const_lv11_2 = "10";
const sc_lv<32> Loop_real2xfft_outpu::ap_const_lv32_A = "1010";

Loop_real2xfft_outpu::Loop_real2xfft_outpu(sc_module_name name) : sc_module(name), mVcdFile(0) {
    regslice_both_dout_V_data_U = new regslice_both<32>("regslice_both_dout_V_data_U");
    regslice_both_dout_V_data_U->ap_clk(ap_clk);
    regslice_both_dout_V_data_U->ap_rst(ap_rst);
    regslice_both_dout_V_data_U->data_in(dout_TDATA_int);
    regslice_both_dout_V_data_U->vld_in(dout_TVALID_int);
    regslice_both_dout_V_data_U->ack_in(dout_TREADY_int);
    regslice_both_dout_V_data_U->data_out(dout_TDATA);
    regslice_both_dout_V_data_U->vld_out(regslice_both_dout_V_data_U_vld_out);
    regslice_both_dout_V_data_U->ack_out(dout_TREADY);
    regslice_both_dout_V_data_U->apdone_blk(regslice_both_dout_V_data_U_apdone_blk);
    regslice_both_dout_V_last_V_U = new regslice_both<1>("regslice_both_dout_V_last_V_U");
    regslice_both_dout_V_last_V_U->ap_clk(ap_clk);
    regslice_both_dout_V_last_V_U->ap_rst(ap_rst);
    regslice_both_dout_V_last_V_U->data_in(dout_TLAST_int);
    regslice_both_dout_V_last_V_U->vld_in(dout_TVALID_int);
    regslice_both_dout_V_last_V_U->ack_in(regslice_both_dout_V_last_V_U_ack_in_dummy);
    regslice_both_dout_V_last_V_U->data_out(dout_TLAST);
    regslice_both_dout_V_last_V_U->vld_out(regslice_both_dout_V_last_V_U_vld_out);
    regslice_both_dout_V_last_V_U->ack_out(dout_TREADY);
    regslice_both_dout_V_last_V_U->apdone_blk(regslice_both_dout_V_last_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( windowed_0_empty_n );
    sensitive << ( windowed_1_empty_n );
    sensitive << ( regslice_both_dout_V_data_U_apdone_blk );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( windowed_0_empty_n );
    sensitive << ( windowed_1_empty_n );
    sensitive << ( regslice_both_dout_V_data_U_apdone_blk );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( dout_TREADY_int );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( windowed_0_empty_n );
    sensitive << ( windowed_1_empty_n );
    sensitive << ( regslice_both_dout_V_data_U_apdone_blk );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( dout_TREADY_int );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);
    sensitive << ( windowed_0_empty_n );
    sensitive << ( windowed_1_empty_n );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( regslice_both_dout_V_data_U_apdone_blk );

    SC_METHOD(thread_ap_condition_78);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( tmp_reg_193 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_enable_reg_pp0_iter0);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_idle_pp0_0to0);
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_phi_mux_i_01_phi_fu_128_p6);
    sensitive << ( i_01_reg_124 );
    sensitive << ( trunc_ln77_reg_188 );
    sensitive << ( tmp_reg_193 );
    sensitive << ( ap_condition_78 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( tmp_fu_168_p3 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_reset_idle_pp0);
    sensitive << ( ap_start );
    sensitive << ( ap_idle_pp0_0to0 );

    SC_METHOD(thread_dout_TDATA_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( dout_TREADY_int );

    SC_METHOD(thread_dout_TDATA_int);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( windowed_0_dout );
    sensitive << ( windowed_1_dout );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_dout_TLAST_int);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_phi_mux_i_01_phi_fu_128_p6 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_dout_TVALID);
    sensitive << ( regslice_both_dout_V_data_U_vld_out );

    SC_METHOD(thread_dout_TVALID_int);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_i_01_cast_fu_138_p1);
    sensitive << ( ap_phi_mux_i_01_phi_fu_128_p6 );

    SC_METHOD(thread_i_fu_158_p2);
    sensitive << ( i_01_cast_fu_138_p1 );

    SC_METHOD(thread_tmp_fu_168_p3);
    sensitive << ( i_fu_158_p2 );

    SC_METHOD(thread_trunc_ln77_fu_164_p1);
    sensitive << ( i_fu_158_p2 );

    SC_METHOD(thread_windowed_0_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( windowed_0_empty_n );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_windowed_0_read);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_windowed_1_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( windowed_1_empty_n );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_windowed_1_read);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_reset_idle_pp0 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "01";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_real2xfft_outpu_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, windowed_0_dout, "(port)windowed_0_dout");
    sc_trace(mVcdFile, windowed_0_empty_n, "(port)windowed_0_empty_n");
    sc_trace(mVcdFile, windowed_0_read, "(port)windowed_0_read");
    sc_trace(mVcdFile, windowed_1_dout, "(port)windowed_1_dout");
    sc_trace(mVcdFile, windowed_1_empty_n, "(port)windowed_1_empty_n");
    sc_trace(mVcdFile, windowed_1_read, "(port)windowed_1_read");
    sc_trace(mVcdFile, dout_TREADY, "(port)dout_TREADY");
    sc_trace(mVcdFile, dout_TDATA, "(port)dout_TDATA");
    sc_trace(mVcdFile, dout_TVALID, "(port)dout_TVALID");
    sc_trace(mVcdFile, dout_TLAST, "(port)dout_TLAST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_fu_168_p3, "tmp_fu_168_p3");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, regslice_both_dout_V_data_U_apdone_blk, "regslice_both_dout_V_data_U_apdone_blk");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, windowed_0_blk_n, "windowed_0_blk_n");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, windowed_1_blk_n, "windowed_1_blk_n");
    sc_trace(mVcdFile, dout_TDATA_blk_n, "dout_TDATA_blk_n");
    sc_trace(mVcdFile, i_01_reg_124, "i_01_reg_124");
    sc_trace(mVcdFile, trunc_ln77_fu_164_p1, "trunc_ln77_fu_164_p1");
    sc_trace(mVcdFile, trunc_ln77_reg_188, "trunc_ln77_reg_188");
    sc_trace(mVcdFile, tmp_reg_193, "tmp_reg_193");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_phi_mux_i_01_phi_fu_128_p6, "ap_phi_mux_i_01_phi_fu_128_p6");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, i_01_cast_fu_138_p1, "i_01_cast_fu_138_p1");
    sc_trace(mVcdFile, i_fu_158_p2, "i_fu_158_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0_0to0, "ap_idle_pp0_0to0");
    sc_trace(mVcdFile, ap_reset_idle_pp0, "ap_reset_idle_pp0");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, dout_TDATA_int, "dout_TDATA_int");
    sc_trace(mVcdFile, dout_TVALID_int, "dout_TVALID_int");
    sc_trace(mVcdFile, dout_TREADY_int, "dout_TREADY_int");
    sc_trace(mVcdFile, regslice_both_dout_V_data_U_vld_out, "regslice_both_dout_V_data_U_vld_out");
    sc_trace(mVcdFile, regslice_both_dout_V_last_V_U_apdone_blk, "regslice_both_dout_V_last_V_U_apdone_blk");
    sc_trace(mVcdFile, dout_TLAST_int, "dout_TLAST_int");
    sc_trace(mVcdFile, regslice_both_dout_V_last_V_U_ack_in_dummy, "regslice_both_dout_V_last_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_dout_V_last_V_U_vld_out, "regslice_both_dout_V_last_V_U_vld_out");
    sc_trace(mVcdFile, ap_condition_78, "ap_condition_78");
#endif

    }
}

Loop_real2xfft_outpu::~Loop_real2xfft_outpu() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete regslice_both_dout_V_data_U;
    delete regslice_both_dout_V_last_V_U;
}

void Loop_real2xfft_outpu::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_193.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_start.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_193.read(), ap_const_lv1_0))) {
        i_01_reg_124 = trunc_ln77_reg_188.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                 !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1))) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_193.read())))) {
        i_01_reg_124 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_reg_193 = i_fu_158_p2.read().range(10, 10);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        trunc_ln77_reg_188 = trunc_ln77_fu_164_p1.read();
    }
}

void Loop_real2xfft_outpu::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Loop_real2xfft_outpu::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_real2xfft_outpu::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_real2xfft_outpu::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
  (esl_seteq<1,1,1>(ap_const_logic_0, windowed_0_empty_n.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, windowed_1_empty_n.read()))) || (esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_dout_V_data_U_apdone_blk.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read())));
}

void Loop_real2xfft_outpu::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
  (esl_seteq<1,1,1>(ap_const_logic_0, windowed_0_empty_n.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, windowed_1_empty_n.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, dout_TREADY_int.read()))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  (esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_dout_V_data_U_apdone_blk.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, dout_TREADY_int.read()))));
}

void Loop_real2xfft_outpu::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
  (esl_seteq<1,1,1>(ap_const_logic_0, windowed_0_empty_n.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, windowed_1_empty_n.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, dout_TREADY_int.read()))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  (esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_dout_V_data_U_apdone_blk.read()) || 
   esl_seteq<1,1,1>(ap_const_logic_0, dout_TREADY_int.read()))));
}

void Loop_real2xfft_outpu::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Loop_real2xfft_outpu::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = (esl_seteq<1,1,1>(ap_const_logic_0, windowed_0_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, windowed_1_empty_n.read()));
}

void Loop_real2xfft_outpu::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_dout_V_data_U_apdone_blk.read());
}

void Loop_real2xfft_outpu::thread_ap_condition_78() {
    ap_condition_78 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0));
}

void Loop_real2xfft_outpu::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_193.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_real2xfft_outpu::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Loop_real2xfft_outpu::thread_ap_enable_reg_pp0_iter0() {
    ap_enable_reg_pp0_iter0 = ap_start.read();
}

void Loop_real2xfft_outpu::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_ap_idle_pp0_0to0() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read())) {
        ap_idle_pp0_0to0 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to0 = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_ap_phi_mux_i_01_phi_fu_128_p6() {
    if (esl_seteq<1,1,1>(ap_condition_78.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_193.read())) {
            ap_phi_mux_i_01_phi_fu_128_p6 = ap_const_lv10_0;
        } else if (esl_seteq<1,1,1>(tmp_reg_193.read(), ap_const_lv1_0)) {
            ap_phi_mux_i_01_phi_fu_128_p6 = trunc_ln77_reg_188.read();
        } else {
            ap_phi_mux_i_01_phi_fu_128_p6 = i_01_reg_124.read();
        }
    } else {
        ap_phi_mux_i_01_phi_fu_128_p6 = i_01_reg_124.read();
    }
}

void Loop_real2xfft_outpu::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(tmp_fu_168_p3.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to0.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_dout_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)))) {
        dout_TDATA_blk_n = dout_TREADY_int.read();
    } else {
        dout_TDATA_blk_n = ap_const_logic_1;
    }
}

void Loop_real2xfft_outpu::thread_dout_TDATA_int() {
    dout_TDATA_int = esl_concat<16,16>(windowed_1_dout.read(), windowed_0_dout.read());
}

void Loop_real2xfft_outpu::thread_dout_TLAST_int() {
    dout_TLAST_int = (!ap_phi_mux_i_01_phi_fu_128_p6.read().is_01() || !ap_const_lv10_3FE.is_01())? sc_lv<1>(): sc_lv<1>(ap_phi_mux_i_01_phi_fu_128_p6.read() == ap_const_lv10_3FE);
}

void Loop_real2xfft_outpu::thread_dout_TVALID() {
    dout_TVALID = regslice_both_dout_V_data_U_vld_out.read();
}

void Loop_real2xfft_outpu::thread_dout_TVALID_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        dout_TVALID_int = ap_const_logic_1;
    } else {
        dout_TVALID_int = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_i_01_cast_fu_138_p1() {
    i_01_cast_fu_138_p1 = esl_zext<11,10>(ap_phi_mux_i_01_phi_fu_128_p6.read());
}

void Loop_real2xfft_outpu::thread_i_fu_158_p2() {
    i_fu_158_p2 = (!ap_const_lv11_2.is_01() || !i_01_cast_fu_138_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(ap_const_lv11_2) + sc_biguint<11>(i_01_cast_fu_138_p1.read()));
}

void Loop_real2xfft_outpu::thread_tmp_fu_168_p3() {
    tmp_fu_168_p3 = i_fu_158_p2.read().range(10, 10);
}

void Loop_real2xfft_outpu::thread_trunc_ln77_fu_164_p1() {
    trunc_ln77_fu_164_p1 = i_fu_158_p2.read().range(10-1, 0);
}

void Loop_real2xfft_outpu::thread_windowed_0_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        windowed_0_blk_n = windowed_0_empty_n.read();
    } else {
        windowed_0_blk_n = ap_const_logic_1;
    }
}

void Loop_real2xfft_outpu::thread_windowed_0_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        windowed_0_read = ap_const_logic_1;
    } else {
        windowed_0_read = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_windowed_1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        windowed_1_blk_n = windowed_1_empty_n.read();
    } else {
        windowed_1_blk_n = ap_const_logic_1;
    }
}

void Loop_real2xfft_outpu::thread_windowed_1_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        windowed_1_read = ap_const_logic_1;
    } else {
        windowed_1_read = ap_const_logic_0;
    }
}

void Loop_real2xfft_outpu::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(ap_reset_idle_pp0.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reset_idle_pp0.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

