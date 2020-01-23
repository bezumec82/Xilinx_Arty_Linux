// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Jun 28 22:08:24 2018
// Host        : constantine-System-Product-Name running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/constantine/ARTY_A7/Vivado_prjct/Vivado_prjct.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_sim_netlist.v
// Design      : system_clk_wiz_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module system_clk_wiz_1_0
   (ddr_sys_clk,
    ddr_ref_clk,
    eth_clk_25,
    ext_spi_clk,
    axi_aclk,
    resetn,
    locked,
    clk_in1);
  output ddr_sys_clk;
  output ddr_ref_clk;
  output eth_clk_25;
  output ext_spi_clk;
  output axi_aclk;
  input resetn;
  output locked;
  input clk_in1;

  wire axi_aclk;
  (* IBUF_LOW_PWR *) wire clk_in1;
  wire ddr_ref_clk;
  wire ddr_sys_clk;
  wire eth_clk_25;
  wire ext_spi_clk;
  wire locked;
  wire resetn;

  system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz inst
       (.axi_aclk(axi_aclk),
        .clk_in1(clk_in1),
        .ddr_ref_clk(ddr_ref_clk),
        .ddr_sys_clk(ddr_sys_clk),
        .eth_clk_25(eth_clk_25),
        .ext_spi_clk(ext_spi_clk),
        .locked(locked),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "system_clk_wiz_1_0_clk_wiz" *) 
module system_clk_wiz_1_0_system_clk_wiz_1_0_clk_wiz
   (ddr_sys_clk,
    ddr_ref_clk,
    eth_clk_25,
    ext_spi_clk,
    axi_aclk,
    resetn,
    locked,
    clk_in1);
  output ddr_sys_clk;
  output ddr_ref_clk;
  output eth_clk_25;
  output ext_spi_clk;
  output axi_aclk;
  input resetn;
  output locked;
  input clk_in1;

  wire axi_aclk;
  wire axi_aclk_system_clk_wiz_1_0;
  wire axi_aclk_system_clk_wiz_1_0_en_clk;
  wire clk_in1;
  wire clk_in1_system_clk_wiz_1_0;
  wire clkfbout_buf_system_clk_wiz_1_0;
  wire clkfbout_system_clk_wiz_1_0;
  wire ddr_ref_clk;
  wire ddr_ref_clk_system_clk_wiz_1_0;
  wire ddr_ref_clk_system_clk_wiz_1_0_en_clk;
  wire ddr_sys_clk;
  wire ddr_sys_clk_system_clk_wiz_1_0;
  wire ddr_sys_clk_system_clk_wiz_1_0_en_clk;
  wire eth_clk_25;
  wire eth_clk_25_system_clk_wiz_1_0;
  wire eth_clk_25_system_clk_wiz_1_0_en_clk;
  wire ext_spi_clk;
  wire ext_spi_clk_system_clk_wiz_1_0;
  wire ext_spi_clk_system_clk_wiz_1_0_en_clk;
  wire locked;
  wire reset_high;
  wire resetn;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg1;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg2;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg3;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg4;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg5;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_system_clk_wiz_1_0),
        .O(clkfbout_buf_system_clk_wiz_1_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_system_clk_wiz_1_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    clkout1_buf
       (.CE0(seq_reg1[7]),
        .CE1(1'b0),
        .I0(ddr_sys_clk_system_clk_wiz_1_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(ddr_sys_clk),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH clkout1_buf_en
       (.I(ddr_sys_clk_system_clk_wiz_1_0),
        .O(ddr_sys_clk_system_clk_wiz_1_0_en_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    clkout2_buf
       (.CE0(seq_reg2[7]),
        .CE1(1'b0),
        .I0(ddr_ref_clk_system_clk_wiz_1_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(ddr_ref_clk),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH clkout2_buf_en
       (.I(ddr_ref_clk_system_clk_wiz_1_0),
        .O(ddr_ref_clk_system_clk_wiz_1_0_en_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    clkout3_buf
       (.CE0(seq_reg3[7]),
        .CE1(1'b0),
        .I0(eth_clk_25_system_clk_wiz_1_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(eth_clk_25),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH clkout3_buf_en
       (.I(eth_clk_25_system_clk_wiz_1_0),
        .O(eth_clk_25_system_clk_wiz_1_0_en_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    clkout4_buf
       (.CE0(seq_reg4[7]),
        .CE1(1'b0),
        .I0(ext_spi_clk_system_clk_wiz_1_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(ext_spi_clk),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH clkout4_buf_en
       (.I(ext_spi_clk_system_clk_wiz_1_0),
        .O(ext_spi_clk_system_clk_wiz_1_0_en_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    clkout5_buf
       (.CE0(seq_reg5[7]),
        .CE1(1'b0),
        .I0(axi_aclk_system_clk_wiz_1_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(axi_aclk),
        .S0(1'b1),
        .S1(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH clkout5_buf_en
       (.I(axi_aclk_system_clk_wiz_1_0),
        .O(axi_aclk_system_clk_wiz_1_0_en_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(6.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(5),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(40),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(45.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(10),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(270.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(10),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(90.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_system_clk_wiz_1_0),
        .CLKFBOUT(clkfbout_system_clk_wiz_1_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_system_clk_wiz_1_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(ddr_sys_clk_system_clk_wiz_1_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(ddr_ref_clk_system_clk_wiz_1_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(eth_clk_25_system_clk_wiz_1_0),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(ext_spi_clk_system_clk_wiz_1_0),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(axi_aclk_system_clk_wiz_1_0),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[0] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(locked),
        .Q(seq_reg1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[1] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[0]),
        .Q(seq_reg1[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[2] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[1]),
        .Q(seq_reg1[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[3] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[2]),
        .Q(seq_reg1[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[4] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[3]),
        .Q(seq_reg1[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[5] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[4]),
        .Q(seq_reg1[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[6] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[5]),
        .Q(seq_reg1[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg1_reg[7] 
       (.C(ddr_sys_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg1[6]),
        .Q(seq_reg1[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[0] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(locked),
        .Q(seq_reg2[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[1] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[0]),
        .Q(seq_reg2[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[2] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[1]),
        .Q(seq_reg2[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[3] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[2]),
        .Q(seq_reg2[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[4] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[3]),
        .Q(seq_reg2[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[5] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[4]),
        .Q(seq_reg2[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[6] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[5]),
        .Q(seq_reg2[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg2_reg[7] 
       (.C(ddr_ref_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg2[6]),
        .Q(seq_reg2[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[0] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(locked),
        .Q(seq_reg3[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[1] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[0]),
        .Q(seq_reg3[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[2] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[1]),
        .Q(seq_reg3[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[3] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[2]),
        .Q(seq_reg3[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[4] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[3]),
        .Q(seq_reg3[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[5] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[4]),
        .Q(seq_reg3[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[6] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[5]),
        .Q(seq_reg3[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg3_reg[7] 
       (.C(eth_clk_25_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg3[6]),
        .Q(seq_reg3[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[0] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(locked),
        .Q(seq_reg4[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[1] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[0]),
        .Q(seq_reg4[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[2] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[1]),
        .Q(seq_reg4[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[3] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[2]),
        .Q(seq_reg4[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[4] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[3]),
        .Q(seq_reg4[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[5] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[4]),
        .Q(seq_reg4[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[6] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[5]),
        .Q(seq_reg4[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg4_reg[7] 
       (.C(ext_spi_clk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg4[6]),
        .Q(seq_reg4[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[0] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(locked),
        .Q(seq_reg5[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[1] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[0]),
        .Q(seq_reg5[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[2] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[1]),
        .Q(seq_reg5[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[3] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[2]),
        .Q(seq_reg5[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[4] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[3]),
        .Q(seq_reg5[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[5] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[4]),
        .Q(seq_reg5[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[6] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[5]),
        .Q(seq_reg5[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \seq_reg5_reg[7] 
       (.C(axi_aclk_system_clk_wiz_1_0_en_clk),
        .CE(1'b1),
        .D(seq_reg5[6]),
        .Q(seq_reg5[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
