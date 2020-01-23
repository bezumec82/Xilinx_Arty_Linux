vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/lib_bmg_v1_0_8
vlib activehdl/fifo_generator_v13_1_4
vlib activehdl/lib_fifo_v1_0_8
vlib activehdl/axi_ethernetlite_v3_0_11
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_15
vlib activehdl/dist_mem_gen_v8_0_11
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_quad_spi_v3_2_12
vlib activehdl/axi_timer_v2_0_15
vlib activehdl/mdm_v3_2_10
vlib activehdl/microblaze_v10_0_3
vlib activehdl/axi_intc_v4_1_10
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/proc_sys_reset_v5_0_11
vlib activehdl/lmb_bram_if_cntlr_v4_0_12
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_13
vlib activehdl/axi_data_fifo_v2_1_12
vlib activehdl/axi_crossbar_v2_1_14
vlib activehdl/axi_uartlite_v2_0_17
vlib activehdl/axi_clock_converter_v2_1_12
vlib activehdl/axi_protocol_converter_v2_1_13
vlib activehdl/axi_dwidth_converter_v2_1_13

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap lib_bmg_v1_0_8 activehdl/lib_bmg_v1_0_8
vmap fifo_generator_v13_1_4 activehdl/fifo_generator_v13_1_4
vmap lib_fifo_v1_0_8 activehdl/lib_fifo_v1_0_8
vmap axi_ethernetlite_v3_0_11 activehdl/axi_ethernetlite_v3_0_11
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_15 activehdl/axi_gpio_v2_0_15
vmap dist_mem_gen_v8_0_11 activehdl/dist_mem_gen_v8_0_11
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_quad_spi_v3_2_12 activehdl/axi_quad_spi_v3_2_12
vmap axi_timer_v2_0_15 activehdl/axi_timer_v2_0_15
vmap mdm_v3_2_10 activehdl/mdm_v3_2_10
vmap microblaze_v10_0_3 activehdl/microblaze_v10_0_3
vmap axi_intc_v4_1_10 activehdl/axi_intc_v4_1_10
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11
vmap lmb_bram_if_cntlr_v4_0_12 activehdl/lmb_bram_if_cntlr_v4_0_12
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_13 activehdl/axi_register_slice_v2_1_13
vmap axi_data_fifo_v2_1_12 activehdl/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 activehdl/axi_crossbar_v2_1_14
vmap axi_uartlite_v2_0_17 activehdl/axi_uartlite_v2_0_17
vmap axi_clock_converter_v2_1_12 activehdl/axi_clock_converter_v2_1_12
vmap axi_protocol_converter_v2_1_13 activehdl/axi_protocol_converter_v2_1_13
vmap axi_dwidth_converter_v2_1_13 activehdl/axi_dwidth_converter_v2_1_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"/home/constantine/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/constantine/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/constantine/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_8 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/0dfc/hdl/lib_bmg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_8 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_11 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/f341/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_ethernetlite_0_0/sim/system_axi_ethernetlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_15 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/cb07/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_led_0/sim/system_axi_gpio_led_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_sw_0/sim/system_axi_gpio_sw_0.vhd" \

vlog -work dist_mem_gen_v8_0_11  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/ec0d/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_12 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/2c94/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_quad_spi_flash_0/sim/system_axi_quad_spi_flash_0.vhd" \

vcom -work axi_timer_v2_0_15 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/a004/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.v" \

vcom -work mdm_v3_2_10 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/5967/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vcom -work microblaze_v10_0_3 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/fe06/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_10 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/d685/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_microblaze_0_axi_intc_0/sim/system_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_microblaze_0_xlconcat_0/sim/system_microblaze_0_xlconcat_0.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0_mig_sim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0.v" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_clk_wiz_1_100M_0/sim/system_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/system/ip/system_rst_mig_7series_0_83M_0/sim/system_rst_mig_7series_0_83M_0.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_family.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/system_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_drp_arbiter.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_temperature_update.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.v" \

vcom -work lmb_bram_if_cntlr_v4_0_12 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/51e1/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_0/sim/system_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_dlmb_v10_0/sim/system_dlmb_v10_0.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_0/sim/system_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/system/ip/system_ilmb_v10_0/sim/system_ilmb_v10_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_lmb_bram_0/sim/system_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_12  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work axi_uartlite_v2_0_17 -93 \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/1b8b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_uartlite_0_1/sim/system_axi_uartlite_0_1.vhd" \
"../../../bd/system/ip/system_axi_uartlite_1_0/sim/system_axi_uartlite_1_0.vhd" \

vlog -work axi_clock_converter_v2_1_12  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/80fd/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_auto_cc_0/sim/system_auto_cc_0.v" \

vlog -work axi_protocol_converter_v2_1_13  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_13  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/3bde/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../Vivado_prjct.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_auto_us_1/sim/system_auto_us_1.v" \
"../../../bd/system/ip/system_auto_us_0/sim/system_auto_us_0.v" \
"../../../bd/system/hdl/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

