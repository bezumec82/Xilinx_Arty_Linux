// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Jun 27 13:13:52 2018
// Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top system_clk_wiz_1_1 -prefix
//               system_clk_wiz_1_1_ system_clk_wiz_1_1_stub.v
// Design      : system_clk_wiz_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_1_1(periph_clk, MB_clk, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="periph_clk,MB_clk,resetn,locked,clk_in1" */;
  output periph_clk;
  output MB_clk;
  input resetn;
  output locked;
  input clk_in1;
endmodule
