-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Jun 28 22:08:24 2018
-- Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/constantine/ARTY_A7/Vivado_prjct/Vivado_prjct.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_stub.vhdl
-- Design      : system_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_1_0 is
  Port ( 
    ddr_sys_clk : out STD_LOGIC;
    ddr_ref_clk : out STD_LOGIC;
    eth_clk_25 : out STD_LOGIC;
    ext_spi_clk : out STD_LOGIC;
    axi_aclk : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_1_0;

architecture stub of system_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ddr_sys_clk,ddr_ref_clk,eth_clk_25,ext_spi_clk,axi_aclk,resetn,locked,clk_in1";
begin
end;
