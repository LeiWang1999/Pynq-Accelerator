vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_7
vlib modelsim_lib/msim/processing_system7_vip_v1_0_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_16
vlib modelsim_lib/msim/floating_point_v7_1_10
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/lib_fifo_v1_0_14
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_23
vlib modelsim_lib/msim/axi_sg_v4_1_13
vlib modelsim_lib/msim/axi_dma_v7_1_22
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_21
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_20
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_21

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 modelsim_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 modelsim_lib/msim/processing_system7_vip_v1_0_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 modelsim_lib/msim/mult_gen_v12_0_16
vmap floating_point_v7_1_10 modelsim_lib/msim/floating_point_v7_1_10
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 modelsim_lib/msim/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_23 modelsim_lib/msim/axi_datamover_v5_1_23
vmap axi_sg_v4_1_13 modelsim_lib/msim/axi_sg_v4_1_13
vmap axi_dma_v7_1_22 modelsim_lib/msim/axi_dma_v7_1_22
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_21 modelsim_lib/msim/axi_register_slice_v2_1_21
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_20 modelsim_lib/msim/axi_data_fifo_v2_1_20
vmap axi_protocol_converter_v2_1_21 modelsim_lib/msim/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/lei/Software/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_processing_system7_0_0/sim/CNN_imp_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_10 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/248c/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_ama_addmuladd_15ns_15ns_15s_15s_15_4_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_Axi_Transfer.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_Bias.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_fadd_32ns_32ns_32_5_full_dsp_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_fdiv_32ns_32ns_32_16_no_dsp_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_generic_cast_IEEE754_int_6_float_s.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_Input.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_mac_muladd_15s_15s_15s_15_4_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_mul_32ns_32ns_64_2_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_mul_32s_32s_32_2_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_mul_64ns_31ns_95_5_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_mul_mul_15s_15s_15_4_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_Parameters.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_sdiv_32ns_32ns_32_36_seq_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn_sitofp_32ns_32_6_no_dsp_1.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/regslice_core.v" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/verilog/cnn.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/ip/cnn_ap_fadd_3_full_dsp_32.vhd" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/ip/cnn_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/ip/cnn_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/ip/cnn_ap_fmul_2_max_dsp_32.vhd" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fda1/hdl/ip/cnn_ap_fdiv_14_no_dsp_32.vhd" \
"../../../bd/CNN_imp/ip/CNN_imp_cnn_0_0/sim/CNN_imp_cnn_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_22 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/0fb1/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/CNN_imp/ip/CNN_imp_axi_dma_0_0/sim/CNN_imp_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/sim/bd_750b.v" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_0/sim/bd_750b_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_1/sim/bd_750b_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_2/sim/bd_750b_arsw_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_3/sim/bd_750b_rsw_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_4/sim/bd_750b_awsw_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_5/sim/bd_750b_wsw_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_6/sim/bd_750b_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/053f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_7/sim/bd_750b_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_8/sim/bd_750b_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_9/sim/bd_750b_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_10/sim/bd_750b_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_11/sim/bd_750b_sarn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_12/sim/bd_750b_srn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_13/sim/bd_750b_s01mmu_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_14/sim/bd_750b_s01tr_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_15/sim/bd_750b_s01sic_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_16/sim/bd_750b_s01a2s_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_17/sim/bd_750b_sawn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_18/sim/bd_750b_swn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_19/sim/bd_750b_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_20/sim/bd_750b_m00s2a_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_21/sim/bd_750b_m00arn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_22/sim/bd_750b_m00rn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_23/sim/bd_750b_m00awn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_24/sim/bd_750b_m00wn_0.sv" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_25/sim/bd_750b_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/7af8/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/bd_0/ip/ip_26/sim/bd_750b_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_21 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_axi_smc_0/sim/CNN_imp_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/CNN_imp/ip/CNN_imp_rst_ps7_0_100M_0/sim/CNN_imp_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_21 -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/ec67/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/6b56/hdl" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/2702/hdl/verilog" "+incdir+../../../../Vivado_implementation.srcs/sources_1/bd/CNN_imp/ipshared/4676/hdl/verilog" "+incdir+/home/lei/Software/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/CNN_imp/ip/CNN_imp_auto_pc_0/sim/CNN_imp_auto_pc_0.v" \
"../../../bd/CNN_imp/sim/CNN_imp.v" \

vlog -work xil_defaultlib \
"glbl.v"

