// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Mon Jun 25 11:40:56 2018
// Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/constantine/ARTY_A7/Vivado_prjct/Vivado_prjct.srcs/sources_1/bd/system/ip/system_util_ds_buf_0_0/system_util_ds_buf_0_0_stub.v
// Design      : system_util_ds_buf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2017.2" *)
module system_util_ds_buf_0_0(BUFG_I, BUFG_O)
/* synthesis syn_black_box black_box_pad_pin="BUFG_I[0:0],BUFG_O[0:0]" */;
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;
endmodule
