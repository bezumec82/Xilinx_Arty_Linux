-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Jun 27 13:13:52 2018
-- Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_clk_wiz_1_1 -prefix
--               system_clk_wiz_1_1_ system_clk_wiz_1_1_stub.vhdl
-- Design      : system_clk_wiz_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_1_1 is
  Port ( 
    periph_clk : out STD_LOGIC;
    MB_clk : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_1_1;

architecture stub of system_clk_wiz_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "periph_clk,MB_clk,resetn,locked,clk_in1";
begin
end;
