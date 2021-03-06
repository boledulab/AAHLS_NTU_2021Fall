#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : Zynq_RealFFT.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Sun Oct 17 20:22:59 +0800 2021
# SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved. 
#
# usage: Zynq_RealFFT.sh [-help]
# usage: Zynq_RealFFT.sh [-lib_map_path]
# usage: Zynq_RealFFT.sh [-noclean_files]
# usage: Zynq_RealFFT.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'Zynq_RealFFT.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xilinx_vip xpm xbip_utils_v3_0_10 axi_utils_v2_0_6 c_reg_fd_v12_0_6 xbip_dsp48_wrapper_v3_0_4 xbip_pipe_v3_0_6 xbip_dsp48_addsub_v3_0_6 xbip_addsub_v3_0_6 c_addsub_v12_0_14 c_mux_bit_v12_0_6 c_shift_ram_v12_0_14 xbip_bram18k_v3_0_6 mult_gen_v12_0_16 cmpy_v6_0_19 floating_point_v7_0_18 xfft_v9_1_5 xil_defaultlib xlconstant_v1_1_7 axi_infrastructure_v1_1_0 axi_vip_v1_1_8 processing_system7_vip_v1_0_10 lib_pkg_v1_0_2 fifo_generator_v13_2_5 lib_fifo_v1_0_14 lib_srl_fifo_v1_0_2 lib_cdc_v1_0_2 axi_datamover_v5_1_24 axi_sg_v4_1_13 axi_dma_v7_1_23 generic_baseblocks_v2_1_0 axi_register_slice_v2_1_22 axi_data_fifo_v2_1_21 axi_crossbar_v2_1_23 axi_protocol_converter_v2_1_22 axi_clock_converter_v2_1_21 blk_mem_gen_v8_4_4 axi_dwidth_converter_v2_1_22 proc_sys_reset_v5_0_13)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "Zynq_RealFFT.sh - Script generated by export_simulation (Vivado v2020.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_utils_v3_0_10 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_utils_v2_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_reg_fd_v12_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_addsub_v12_0_14 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_mux_bit_v12_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_shift_ram_v12_0_14 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_bram18k_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mult_gen_v12_0_16 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work cmpy_v6_0_19 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/0e0f/hdl/cmpy_v6_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work floating_point_v7_0_18 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/f1e3/hdl/floating_point_v7_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xfft_v9_1_5 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/58b9/hdl/xfft_v9_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_xfft_0_0/sim/Zynq_RealFFT_xfft_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconstant_v1_1_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_xlconstant_0_0/sim/Zynq_RealFFT_xlconstant_0_0.v" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_xlconstant_1_0/sim/Zynq_RealFFT_xlconstant_1_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_8 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_10 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_processing_system7_0_0/sim/Zynq_RealFFT_processing_system7_0_0.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/fifo_w16_d2_A.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/fifo_w16_d256_A.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/fifo_w16_d512_A.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/hls_real2xfft_muleOg.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/Loop_real2xfft_outpu.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/Loop_sliding_win_bkb.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/Loop_sliding_win_del.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/Loop_sliding_win_out.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/regslice_core.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/start_for_Loop_rehbi.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/start_for_Loop_slfYi.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/start_for_window_g8j.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/window_fn.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/window_fn_coeff_tcud.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/window_fn_coeff_tdEe.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/65c7/hdl/verilog/hls_real2xfft.v" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_hls_real2xfft_0_0/sim/Zynq_RealFFT_hls_real2xfft_0_0.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/fifo_w16_d8_A.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_deshbi.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_deshbi_memcore.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_desibs.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_desibs_memcore.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_macfYi.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_macg8j.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_muldEe.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real_muleOg.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_buff.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_dbkb.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_dcud.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_desc.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_rev_s.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/Loop_realfft_be_stre.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/start_for_Loop_rencg.v" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/3b03/hdl/verilog/hls_xfft2real.v" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_hls_xfft2real_0_0/sim/Zynq_RealFFT_hls_xfft2real_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_5 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_fifo_v1_0_14 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_datamover_v5_1_24 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_sg_v4_1_13 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_dma_v7_1_23 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_axi_dma_0/sim/Zynq_RealFFT_axi_dma_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_22 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_21 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_23 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_xbar_0/sim/Zynq_RealFFT_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_22 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_clock_converter_v2_1_21 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work blk_mem_gen_v8_4_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_dwidth_converter_v2_1_22 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_auto_us_0/sim/Zynq_RealFFT_auto_us_0.v" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_auto_pc_0/sim/Zynq_RealFFT_auto_pc_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_rst_ps7_0_100M_0/sim/Zynq_RealFFT_rst_ps7_0_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../project_1.gen/sources_1/bd/Zynq_RealFFT/ipshared/34f8/hdl" +incdir+"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/Zynq_RealFFT/ip/Zynq_RealFFT_auto_pc_1/sim/Zynq_RealFFT_auto_pc_1.v" \
    "$ref_dir/../../../bd/Zynq_RealFFT/sim/Zynq_RealFFT.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.Zynq_RealFFT xil_defaultlib.glbl -o Zynq_RealFFT_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./Zynq_RealFFT_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./Zynq_RealFFT.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key Zynq_RealFFT_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc Zynq_RealFFT_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./Zynq_RealFFT.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: Zynq_RealFFT.sh [-help]\n\
Usage: Zynq_RealFFT.sh [-lib_map_path]\n\
Usage: Zynq_RealFFT.sh [-reset_run]\n\
Usage: Zynq_RealFFT.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
