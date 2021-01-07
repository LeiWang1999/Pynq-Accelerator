// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jan  5 18:58:03 2021
// Host        : lei-HP-EliteDesk-880-G1-TWR running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CNN_imp_cnn_0_0_stub.v
// Design      : CNN_imp_cnn_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnn,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_data_TVALID, 
  in_data_TREADY, in_data_TDATA, out_data_TVALID, out_data_TREADY, out_data_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_data_TVALID,in_data_TREADY,in_data_TDATA[7:0],out_data_TVALID,out_data_TREADY,out_data_TDATA[7:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_data_TVALID;
  output in_data_TREADY;
  input [7:0]in_data_TDATA;
  output out_data_TVALID;
  input out_data_TREADY;
  output [7:0]out_data_TDATA;
endmodule
