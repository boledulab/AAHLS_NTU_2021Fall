// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_realfft_be_buff_HH_
#define _Loop_realfft_be_buff_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_realfft_be_buff : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > descramble_buf_0_M_imag_V_address0;
    sc_out< sc_logic > descramble_buf_0_M_imag_V_ce0;
    sc_out< sc_logic > descramble_buf_0_M_imag_V_we0;
    sc_out< sc_lv<16> > descramble_buf_0_M_imag_V_d0;
    sc_out< sc_lv<8> > descramble_buf_1_M_imag_V_address0;
    sc_out< sc_logic > descramble_buf_1_M_imag_V_ce0;
    sc_out< sc_logic > descramble_buf_1_M_imag_V_we0;
    sc_out< sc_lv<16> > descramble_buf_1_M_imag_V_d0;
    sc_in< sc_lv<32> > din_TDATA;
    sc_in< sc_logic > din_TVALID;
    sc_out< sc_logic > din_TREADY;
    sc_in< sc_lv<1> > din_TLAST;
    sc_out< sc_lv<8> > descramble_buf_0_M_real_V_address0;
    sc_out< sc_logic > descramble_buf_0_M_real_V_ce0;
    sc_out< sc_logic > descramble_buf_0_M_real_V_we0;
    sc_out< sc_lv<16> > descramble_buf_0_M_real_V_d0;
    sc_out< sc_lv<8> > descramble_buf_1_M_real_V_address0;
    sc_out< sc_logic > descramble_buf_1_M_real_V_ce0;
    sc_out< sc_logic > descramble_buf_1_M_real_V_we0;
    sc_out< sc_lv<16> > descramble_buf_1_M_real_V_d0;


    // Module declarations
    Loop_realfft_be_buff(sc_module_name name);
    SC_HAS_PROCESS(Loop_realfft_be_buff);

    ~Loop_realfft_be_buff();

    sc_trace_file* mVcdFile;

    regslice_both<32>* regslice_both_din_V_data_U;
    regslice_both<1>* regslice_both_din_V_last_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > din_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > i_fu_191_p2;
    sc_signal< bool > ap_block_state2;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > icmp_ln78_fu_209_p2;
    sc_signal< sc_lv<9> > val_assign41_reg_141;
    sc_signal< sc_lv<64> > zext_ln203_fu_169_p1;
    sc_signal< sc_lv<1> > tmp_9_fu_183_p3;
    sc_signal< sc_lv<16> > trunc_ln203_fu_177_p1;
    sc_signal< sc_lv<8> > trunc_ln_fu_159_p4;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_logic > regslice_both_din_V_data_U_apdone_blk;
    sc_signal< sc_lv<32> > din_TDATA_int;
    sc_signal< sc_logic > din_TVALID_int;
    sc_signal< sc_logic > din_TREADY_int;
    sc_signal< sc_logic > regslice_both_din_V_data_U_ack_in;
    sc_signal< sc_logic > regslice_both_din_V_last_V_U_apdone_blk;
    sc_signal< sc_lv<1> > din_TLAST_int;
    sc_signal< sc_logic > regslice_both_din_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_din_V_last_V_U_ack_in;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_descramble_buf_0_M_imag_V_address0();
    void thread_descramble_buf_0_M_imag_V_ce0();
    void thread_descramble_buf_0_M_imag_V_d0();
    void thread_descramble_buf_0_M_imag_V_we0();
    void thread_descramble_buf_0_M_real_V_address0();
    void thread_descramble_buf_0_M_real_V_ce0();
    void thread_descramble_buf_0_M_real_V_d0();
    void thread_descramble_buf_0_M_real_V_we0();
    void thread_descramble_buf_1_M_imag_V_address0();
    void thread_descramble_buf_1_M_imag_V_ce0();
    void thread_descramble_buf_1_M_imag_V_d0();
    void thread_descramble_buf_1_M_imag_V_we0();
    void thread_descramble_buf_1_M_real_V_address0();
    void thread_descramble_buf_1_M_real_V_ce0();
    void thread_descramble_buf_1_M_real_V_d0();
    void thread_descramble_buf_1_M_real_V_we0();
    void thread_din_TDATA_blk_n();
    void thread_din_TREADY();
    void thread_din_TREADY_int();
    void thread_i_fu_191_p2();
    void thread_icmp_ln78_fu_209_p2();
    void thread_tmp_9_fu_183_p3();
    void thread_trunc_ln203_fu_177_p1();
    void thread_trunc_ln_fu_159_p4();
    void thread_zext_ln203_fu_169_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
