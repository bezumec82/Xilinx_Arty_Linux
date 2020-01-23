// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Jun 28 22:08:23 2018
// Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/constantine/ARTY_A7/Vivado_prjct/Vivado_prjct.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_stub.v
// Design      : system_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_1_0(ddr_sys_clk, ddr_ref_clk, eth_clk_25, 
  ext_spi_clk, axi_aclk, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="ddr_sys_clk,ddr_ref_clk,eth_clk_25,ext_spi_clk,axi_aclk,resetn,locked,clk_in1" */;
  output ddr_sys_clk;
  output ddr_ref_clk;
  output eth_clk_25;
  output ext_spi_clk;
  output axi_aclk;
  input resetn;
  output locked;
  input clk_in1;
endmodule
