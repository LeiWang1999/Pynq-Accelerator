onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xil_defaultlib -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_10 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_23 -L axi_sg_v4_1_13 -L axi_dma_v7_1_22 -L xlconstant_v1_1_7 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_register_slice_v2_1_21 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_20 -L axi_protocol_converter_v2_1_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.CNN_imp xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {CNN_imp.udo}

run -all

quit -force
