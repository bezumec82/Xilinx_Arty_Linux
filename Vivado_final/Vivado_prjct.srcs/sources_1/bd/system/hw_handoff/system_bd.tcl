
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35ticsg324-1L
   set_property BOARD_PART digilentinc.com:arty-a7-35:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_system_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {<?xml version='1.0' encoding='UTF-8'?>}
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {<Project NoOfControllers="1" >}
   puts $mig_prj_file {    <ModuleName>system_mig_7series_0_1</ModuleName>}
   puts $mig_prj_file {    <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {    <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {    <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {    <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {    <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {    <XADC_En>Disabled</XADC_En>}
   puts $mig_prj_file {    <TargetFPGA>xc7a35ti-csg324/-1L</TargetFPGA>}
   puts $mig_prj_file {    <Version>2.4</Version>}
   puts $mig_prj_file {    <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {    <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {    <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {    <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {    <InternalVref>1</InternalVref>}
   puts $mig_prj_file {    <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {    <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {    <Controller number="0" >}
   puts $mig_prj_file {        <MemoryDevice>DDR3_SDRAM/Components/MT41K128M16XX-15E</MemoryDevice>}
   puts $mig_prj_file {        <TimePeriod>3000</TimePeriod>}
   puts $mig_prj_file {        <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {        <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {        <InputClkFreq>166.666</InputClkFreq>}
   puts $mig_prj_file {        <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {        <MMCM_VCO>666</MMCM_VCO>}
   puts $mig_prj_file {        <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {        <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {        <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {        <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {        <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {        <DataWidth>16</DataWidth>}
   puts $mig_prj_file {        <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {        <DataMask>1</DataMask>}
   puts $mig_prj_file {        <ECC>Disabled</ECC>}
   puts $mig_prj_file {        <Ordering>Normal</Ordering>}
   puts $mig_prj_file {        <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {        <NewPartName></NewPartName>}
   puts $mig_prj_file {        <RowAddress>14</RowAddress>}
   puts $mig_prj_file {        <ColAddress>10</ColAddress>}
   puts $mig_prj_file {        <BankAddress>3</BankAddress>}
   puts $mig_prj_file {        <MemoryVoltage>1.35V</MemoryVoltage>}
   puts $mig_prj_file {        <C0_MEM_SIZE>268435456</C0_MEM_SIZE>}
   puts $mig_prj_file {        <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {        <PinSelection>}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R2" SLEW="" name="ddr3_addr[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R6" SLEW="" name="ddr3_addr[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U6" SLEW="" name="ddr3_addr[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T6" SLEW="" name="ddr3_addr[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T8" SLEW="" name="ddr3_addr[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M6" SLEW="" name="ddr3_addr[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N4" SLEW="" name="ddr3_addr[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T1" SLEW="" name="ddr3_addr[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N6" SLEW="" name="ddr3_addr[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R7" SLEW="" name="ddr3_addr[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V6" SLEW="" name="ddr3_addr[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U7" SLEW="" name="ddr3_addr[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R8" SLEW="" name="ddr3_addr[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V7" SLEW="" name="ddr3_addr[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R1" SLEW="" name="ddr3_ba[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P4" SLEW="" name="ddr3_ba[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P2" SLEW="" name="ddr3_ba[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M4" SLEW="" name="ddr3_cas_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="V9" SLEW="" name="ddr3_ck_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="U9" SLEW="" name="ddr3_ck_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N5" SLEW="" name="ddr3_cke[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U8" SLEW="" name="ddr3_cs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L1" SLEW="" name="ddr3_dm[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U1" SLEW="" name="ddr3_dm[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K5" SLEW="" name="ddr3_dq[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U4" SLEW="" name="ddr3_dq[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V5" SLEW="" name="ddr3_dq[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V1" SLEW="" name="ddr3_dq[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T3" SLEW="" name="ddr3_dq[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U3" SLEW="" name="ddr3_dq[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R3" SLEW="" name="ddr3_dq[15]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L3" SLEW="" name="ddr3_dq[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K3" SLEW="" name="ddr3_dq[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L6" SLEW="" name="ddr3_dq[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M3" SLEW="" name="ddr3_dq[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M1" SLEW="" name="ddr3_dq[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L4" SLEW="" name="ddr3_dq[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M2" SLEW="" name="ddr3_dq[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V4" SLEW="" name="ddr3_dq[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T5" SLEW="" name="ddr3_dq[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="N1" SLEW="" name="ddr3_dqs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="V2" SLEW="" name="ddr3_dqs_n[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="N2" SLEW="" name="ddr3_dqs_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="U2" SLEW="" name="ddr3_dqs_p[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R5" SLEW="" name="ddr3_odt[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P3" SLEW="" name="ddr3_ras_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K6" SLEW="" name="ddr3_reset_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P5" SLEW="" name="ddr3_we_n" IN_TERM="" />}
   puts $mig_prj_file {        </PinSelection>}
   puts $mig_prj_file {        <System_Control>}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="sys_rst" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="init_calib_complete" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="tg_compare_error" />}
   puts $mig_prj_file {        </System_Control>}
   puts $mig_prj_file {        <TimingParameters>}
   puts $mig_prj_file {            <Parameters twtr="7.5" trrd="7.5" trefi="7.8" tfaw="45" trtp="7.5" tcke="5.625" trfc="160" trp="13.5" tras="36" trcd="13.5" />}
   puts $mig_prj_file {        </TimingParameters>}
   puts $mig_prj_file {        <mrBurstLength name="Burst Length" >8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {        <mrBurstType name="Read Burst Type and Length" >Sequential</mrBurstType>}
   puts $mig_prj_file {        <mrCasLatency name="CAS Latency" >5</mrCasLatency>}
   puts $mig_prj_file {        <mrMode name="Mode" >Normal</mrMode>}
   puts $mig_prj_file {        <mrDllReset name="DLL Reset" >No</mrDllReset>}
   puts $mig_prj_file {        <mrPdMode name="DLL control for precharge PD" >Slow Exit</mrPdMode>}
   puts $mig_prj_file {        <emrDllEnable name="DLL Enable" >Enable</emrDllEnable>}
   puts $mig_prj_file {        <emrOutputDriveStrength name="Output Driver Impedance Control" >RZQ/6</emrOutputDriveStrength>}
   puts $mig_prj_file {        <emrMirrorSelection name="Address Mirroring" >Disable</emrMirrorSelection>}
   puts $mig_prj_file {        <emrCSSelection name="Controller Chip Select Pin" >Enable</emrCSSelection>}
   puts $mig_prj_file {        <emrRTT name="RTT (nominal) - On Die Termination (ODT)" >RZQ/6</emrRTT>}
   puts $mig_prj_file {        <emrPosted name="Additive Latency (AL)" >0</emrPosted>}
   puts $mig_prj_file {        <emrOCD name="Write Leveling Enable" >Disabled</emrOCD>}
   puts $mig_prj_file {        <emrDQS name="TDQS enable" >Enabled</emrDQS>}
   puts $mig_prj_file {        <emrRDQS name="Qoff" >Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {        <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh" >Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {        <mr2CasWriteLatency name="CAS write latency" >5</mr2CasWriteLatency>}
   puts $mig_prj_file {        <mr2AutoSelfRefresh name="Auto Self Refresh" >Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {        <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate" >Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {        <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)" >Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {        <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {        <AXIParameters>}
   puts $mig_prj_file {            <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {            <C0_S_AXI_ADDR_WIDTH>28</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_DATA_WIDTH>128</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_ID_WIDTH>1</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {        </AXIParameters>}
   puts $mig_prj_file {    </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_system_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]
  set Vaux0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux0 ]
  set Vaux1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux1 ]
  set Vaux2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux2 ]
  set Vaux4 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux4 ]
  set Vaux5 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux5 ]
  set Vaux6 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux6 ]
  set Vaux7 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux7 ]
  set Vaux9 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux9 ]
  set Vaux10 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux10 ]
  set Vaux12 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux12 ]
  set Vaux13 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux13 ]
  set Vaux14 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux14 ]
  set Vaux15 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux15 ]
  set Vp_Vn [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn ]
  set eth_mdio_mdc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 eth_mdio_mdc ]
  set eth_mii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mii_rtl:1.0 eth_mii ]
  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]
  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]
  set rgb_led [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 rgb_led ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set eth_ref_clk [ create_bd_port -dir O -type clk eth_ref_clk ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: MB_debug, and set properties
  set MB_debug [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 MB_debug ]

  # Create instance: MB_rst, and set properties
  set MB_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 MB_rst ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $MB_rst

  # Create instance: axi_cc_ddr_data, and set properties
  set axi_cc_ddr_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_cc_ddr_data ]
  set_property -dict [ list \
CONFIG.ACLK_ASYNC {1} \
CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_cc_ddr_data

  # Create instance: axi_cc_ddr_instr, and set properties
  set axi_cc_ddr_instr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_cc_ddr_instr ]
  set_property -dict [ list \
CONFIG.ACLK_ASYNC {1} \
CONFIG.ACLK_RATIO {1:2} \
CONFIG.SYNCHRONIZATION_STAGES {3} \
 ] $axi_cc_ddr_instr

  # Create instance: axi_cc_periph, and set properties
  set axi_cc_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_cc_periph ]
  set_property -dict [ list \
CONFIG.ACLK_ASYNC {1} \
CONFIG.ACLK_RATIO {1:2} \
CONFIG.SYNCHRONIZATION_STAGES {3} \
 ] $axi_cc_periph

  # Create instance: axi_ddr, and set properties
  set axi_ddr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ddr ]
  set_property -dict [ list \
CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
CONFIG.M00_HAS_DATA_FIFO {2} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_HAS_DATA_FIFO {2} \
CONFIG.S01_HAS_DATA_FIFO {2} \
CONFIG.STRATEGY {2} \
 ] $axi_ddr

  # Create instance: axi_ethernetlite_0, and set properties
  set axi_ethernetlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_0 ]
  set_property -dict [ list \
CONFIG.C_INCLUDE_INTERNAL_LOOPBACK {1} \
CONFIG.MDIO_BOARD_INTERFACE {eth_mdio_mdc} \
CONFIG.MII_BOARD_INTERFACE {eth_mii} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_ethernetlite_0

  # Create instance: axi_gpio_output, and set properties
  set axi_gpio_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_output ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_ALL_OUTPUTS_2 {0} \
CONFIG.C_GPIO2_WIDTH {12} \
CONFIG.C_GPIO_WIDTH {4} \
CONFIG.C_IS_DUAL {1} \
CONFIG.GPIO2_BOARD_INTERFACE {rgb_led} \
CONFIG.GPIO_BOARD_INTERFACE {led_4bits} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_output

  # Create instance: axi_periph, and set properties
  set axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_periph ]
  set_property -dict [ list \
CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
CONFIG.M00_HAS_DATA_FIFO {0} \
CONFIG.M01_HAS_DATA_FIFO {0} \
CONFIG.M02_HAS_DATA_FIFO {0} \
CONFIG.M03_HAS_DATA_FIFO {0} \
CONFIG.M04_HAS_DATA_FIFO {0} \
CONFIG.M05_HAS_DATA_FIFO {0} \
CONFIG.M06_HAS_DATA_FIFO {0} \
CONFIG.M07_HAS_DATA_FIFO {0} \
CONFIG.M08_HAS_DATA_FIFO {1} \
CONFIG.NUM_MI {7} \
CONFIG.NUM_SI {1} \
CONFIG.S00_HAS_DATA_FIFO {2} \
CONFIG.STRATEGY {2} \
 ] $axi_periph

  # Create instance: axi_quad_spi_flash, and set properties
  set axi_quad_spi_flash [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_flash ]
  set_property -dict [ list \
CONFIG.C_FIFO_DEPTH {256} \
CONFIG.C_SCK_RATIO {2} \
CONFIG.C_SPI_MEMORY {2} \
CONFIG.C_SPI_MODE {2} \
CONFIG.C_TYPE_OF_AXI4_INTERFACE {0} \
CONFIG.C_USE_STARTUP {0} \
CONFIG.C_USE_STARTUP_INT {0} \
CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_flash

  # Create instance: axi_rst, and set properties
  set axi_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 axi_rst ]

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
CONFIG.C_BAUDRATE {115200} \
CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {BUFGCE} \
CONFIG.CLKOUT1_JITTER {118.758} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {166.66666} \
CONFIG.CLKOUT2_DRIVES {BUFGCE} \
CONFIG.CLKOUT2_JITTER {114.829} \
CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200.000} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {BUFGCE} \
CONFIG.CLKOUT3_JITTER {175.402} \
CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {25.000} \
CONFIG.CLKOUT3_REQUESTED_PHASE {45} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.CLKOUT4_DRIVES {BUFGCE} \
CONFIG.CLKOUT4_JITTER {130.958} \
CONFIG.CLKOUT4_PHASE_ERROR {98.575} \
CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
CONFIG.CLKOUT4_REQUESTED_PHASE {270} \
CONFIG.CLKOUT4_USED {true} \
CONFIG.CLKOUT5_DRIVES {BUFGCE} \
CONFIG.CLKOUT5_JITTER {130.958} \
CONFIG.CLKOUT5_PHASE_ERROR {98.575} \
CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
CONFIG.CLKOUT5_REQUESTED_PHASE {90} \
CONFIG.CLKOUT5_USED {true} \
CONFIG.CLKOUT6_DRIVES {BUFGCE} \
CONFIG.CLKOUT6_JITTER {130.958} \
CONFIG.CLKOUT6_PHASE_ERROR {98.575} \
CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100} \
CONFIG.CLKOUT6_REQUESTED_PHASE {270} \
CONFIG.CLKOUT6_USED {false} \
CONFIG.CLKOUT7_DRIVES {BUFGCE} \
CONFIG.CLKOUT7_JITTER {130.958} \
CONFIG.CLKOUT7_PHASE_ERROR {98.575} \
CONFIG.CLKOUT7_REQUESTED_OUT_FREQ {100} \
CONFIG.CLKOUT7_REQUESTED_PHASE {180} \
CONFIG.CLKOUT7_USED {false} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
CONFIG.CLK_OUT1_PORT {ddr_sys_clk} \
CONFIG.CLK_OUT2_PORT {ddr_ref_clk} \
CONFIG.CLK_OUT3_PORT {eth_clk_25} \
CONFIG.CLK_OUT4_PORT {ext_spi_clk} \
CONFIG.CLK_OUT5_PORT {axi_aclk} \
CONFIG.CLK_OUT6_PORT {axi_ddr_clk_100} \
CONFIG.CLK_OUT7_PORT {ext_spi_clk} \
CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
CONFIG.MMCM_CLKOUT2_DIVIDE {40} \
CONFIG.MMCM_CLKOUT2_PHASE {45.000} \
CONFIG.MMCM_CLKOUT3_DIVIDE {10} \
CONFIG.MMCM_CLKOUT3_PHASE {270.000} \
CONFIG.MMCM_CLKOUT4_DIVIDE {10} \
CONFIG.MMCM_CLKOUT4_PHASE {90.000} \
CONFIG.MMCM_CLKOUT5_DIVIDE {1} \
CONFIG.MMCM_CLKOUT5_PHASE {270.000} \
CONFIG.MMCM_CLKOUT6_DIVIDE {1} \
CONFIG.MMCM_CLKOUT6_PHASE {180.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {5} \
CONFIG.PRIMITIVE {MMCM} \
CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_BOARD_FLOW {true} \
CONFIG.USE_LOCKED {true} \
CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {BUFGCE} \
CONFIG.CLKOUT1_JITTER {227.127} \
CONFIG.CLKOUT1_PHASE_ERROR {293.956} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {115.000} \
CONFIG.CLKOUT1_REQUESTED_PHASE {45} \
CONFIG.CLKOUT2_DRIVES {BUFGCE} \
CONFIG.CLKOUT2_JITTER {227.127} \
CONFIG.CLKOUT2_PHASE_ERROR {293.956} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {115.000} \
CONFIG.CLKOUT2_REQUESTED_PHASE {225} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {BUFGCE} \
CONFIG.CLKOUT3_JITTER {265.901} \
CONFIG.CLKOUT3_PHASE_ERROR {303.235} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {75.000} \
CONFIG.CLKOUT3_REQUESTED_PHASE {315} \
CONFIG.CLKOUT3_USED {false} \
CONFIG.CLKOUT4_DRIVES {BUFGCE} \
CONFIG.CLKOUT5_DRIVES {BUFGCE} \
CONFIG.CLKOUT6_DRIVES {BUFGCE} \
CONFIG.CLKOUT7_DRIVES {BUFGCE} \
CONFIG.CLK_OUT1_PORT {periph_clk} \
CONFIG.CLK_OUT2_PORT {MB_clk} \
CONFIG.CLK_OUT3_PORT {axi_ddr_clk} \
CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
CONFIG.MMCM_CLKFBOUT_MULT_F {51.750} \
CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {9.000} \
CONFIG.MMCM_CLKOUT0_PHASE {45.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {9} \
CONFIG.MMCM_CLKOUT1_PHASE {225.000} \
CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
CONFIG.MMCM_CLKOUT2_PHASE {315.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {5} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_1

  # Create instance: ddr_int_rst, and set properties
  set ddr_int_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ddr_int_rst ]

  # Create instance: intrpt_concat_0, and set properties
  set intrpt_concat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 intrpt_concat_0 ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {5} \
 ] $intrpt_concat_0

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_TAG_BITS {14} \
CONFIG.C_AREA_OPTIMIZED {2} \
CONFIG.C_BRANCH_TARGET_CACHE_SIZE {5} \
CONFIG.C_CACHE_BYTE_SIZE {16384} \
CONFIG.C_DCACHE_ADDR_TAG {14} \
CONFIG.C_DCACHE_BYTE_SIZE {16384} \
CONFIG.C_DCACHE_FORCE_TAG_LUTRAM {1} \
CONFIG.C_DCACHE_LINE_LEN {8} \
CONFIG.C_DCACHE_VICTIMS {0} \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_DIV_ZERO_EXCEPTION {0} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_FPU_EXCEPTION {0} \
CONFIG.C_ICACHE_FORCE_TAG_LUTRAM {1} \
CONFIG.C_ICACHE_LINE_LEN {8} \
CONFIG.C_ICACHE_STREAMS {0} \
CONFIG.C_ICACHE_VICTIMS {0} \
CONFIG.C_ILL_OPCODE_EXCEPTION {1} \
CONFIG.C_I_AXI {0} \
CONFIG.C_I_LMB {1} \
CONFIG.C_MMU_DTLB_SIZE {4} \
CONFIG.C_MMU_ITLB_SIZE {2} \
CONFIG.C_MMU_ZONES {2} \
CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
CONFIG.C_M_AXI_I_BUS_EXCEPTION {1} \
CONFIG.C_OPCODE_0x0_ILLEGAL {1} \
CONFIG.C_PVR {0} \
CONFIG.C_UNALIGNED_EXCEPTIONS {1} \
CONFIG.C_USE_BARREL {1} \
CONFIG.C_USE_BRANCH_TARGET_CACHE {1} \
CONFIG.C_USE_DCACHE {1} \
CONFIG.C_USE_DIV {0} \
CONFIG.C_USE_FPU {0} \
CONFIG.C_USE_HW_MUL {1} \
CONFIG.C_USE_ICACHE {1} \
CONFIG.C_USE_MMU {3} \
CONFIG.C_USE_MSR_INSTR {1} \
CONFIG.C_USE_PCMP_INSTR {1} \
CONFIG.G_TEMPLATE_LIST {5} \
CONFIG.G_USE_EXCEPTIONS {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
CONFIG.C_ENABLE_ASYNC {1} \
CONFIG.C_HAS_FAST {1} \
CONFIG.C_IRQ_IS_LEVEL {0} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: mig_7_for_ddr, and set properties
  set mig_7_for_ddr [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.0 mig_7_for_ddr ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7_for_ddr ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_system_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
CONFIG.BOARD_MIG_PARAM {Custom} \
CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7_for_ddr

  # Create instance: periph_rst, and set properties
  set periph_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 periph_rst ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $periph_rst

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG} \
 ] $util_ds_buf_0

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
CONFIG.CHANNEL_ENABLE_TEMPERATURE {true} \
CONFIG.CHANNEL_ENABLE_VAUXP0_VAUXN0 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP10_VAUXN10 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP11_VAUXN11 {false} \
CONFIG.CHANNEL_ENABLE_VAUXP12_VAUXN12 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP13_VAUXN13 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP14_VAUXN14 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP15_VAUXN15 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP1_VAUXN1 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP2_VAUXN2 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP4_VAUXN4 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP5_VAUXN5 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP6_VAUXN6 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP7_VAUXN7 {true} \
CONFIG.CHANNEL_ENABLE_VAUXP9_VAUXN9 {true} \
CONFIG.CHANNEL_ENABLE_VP_VN {true} \
CONFIG.ENABLE_RESET {false} \
CONFIG.ENABLE_TEMP_BUS {true} \
CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
CONFIG.INTERFACE_SELECTION {Enable_AXI} \
CONFIG.OT_ALARM {false} \
CONFIG.SEQUENCER_MODE {Continuous} \
CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} \
CONFIG.USER_TEMP_ALARM {true} \
CONFIG.VCCAUX_ALARM {true} \
CONFIG.VCCINT_ALARM {true} \
CONFIG.VCCINT_ALARM_LOWER {0.95} \
CONFIG.VCCINT_ALARM_UPPER {0.98} \
CONFIG.XADC_STARUP_SELECTION {channel_sequencer} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net Vaux0_1 [get_bd_intf_ports Vaux0] [get_bd_intf_pins xadc_wiz_0/Vaux0]
  connect_bd_intf_net -intf_net Vaux10_1 [get_bd_intf_ports Vaux10] [get_bd_intf_pins xadc_wiz_0/Vaux10]
  connect_bd_intf_net -intf_net Vaux12_1 [get_bd_intf_ports Vaux12] [get_bd_intf_pins xadc_wiz_0/Vaux12]
  connect_bd_intf_net -intf_net Vaux13_1 [get_bd_intf_ports Vaux13] [get_bd_intf_pins xadc_wiz_0/Vaux13]
  connect_bd_intf_net -intf_net Vaux14_1 [get_bd_intf_ports Vaux14] [get_bd_intf_pins xadc_wiz_0/Vaux14]
  connect_bd_intf_net -intf_net Vaux15_1 [get_bd_intf_ports Vaux15] [get_bd_intf_pins xadc_wiz_0/Vaux15]
  connect_bd_intf_net -intf_net Vaux1_1 [get_bd_intf_ports Vaux1] [get_bd_intf_pins xadc_wiz_0/Vaux1]
  connect_bd_intf_net -intf_net Vaux2_1 [get_bd_intf_ports Vaux2] [get_bd_intf_pins xadc_wiz_0/Vaux2]
  connect_bd_intf_net -intf_net Vaux4_1 [get_bd_intf_ports Vaux4] [get_bd_intf_pins xadc_wiz_0/Vaux4]
  connect_bd_intf_net -intf_net Vaux5_1 [get_bd_intf_ports Vaux5] [get_bd_intf_pins xadc_wiz_0/Vaux5]
  connect_bd_intf_net -intf_net Vaux6_1 [get_bd_intf_ports Vaux6] [get_bd_intf_pins xadc_wiz_0/Vaux6]
  connect_bd_intf_net -intf_net Vaux7_1 [get_bd_intf_ports Vaux7] [get_bd_intf_pins xadc_wiz_0/Vaux7]
  connect_bd_intf_net -intf_net Vaux9_1 [get_bd_intf_ports Vaux9] [get_bd_intf_pins xadc_wiz_0/Vaux9]
  connect_bd_intf_net -intf_net Vp_Vn_1 [get_bd_intf_ports Vp_Vn] [get_bd_intf_pins xadc_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net axi_clock_converter_1_M_AXI [get_bd_intf_pins axi_cc_periph/M_AXI] [get_bd_intf_pins axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net axi_ddr_data_M_AXI [get_bd_intf_pins axi_cc_ddr_data/M_AXI] [get_bd_intf_pins axi_ddr/S00_AXI]
  connect_bd_intf_net -intf_net axi_ddr_instr_M_AXI [get_bd_intf_pins axi_cc_ddr_instr/M_AXI] [get_bd_intf_pins axi_ddr/S01_AXI]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MDIO [get_bd_intf_ports eth_mdio_mdc] [get_bd_intf_pins axi_ethernetlite_0/MDIO]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_ports eth_mii] [get_bd_intf_pins axi_ethernetlite_0/MII]
  connect_bd_intf_net -intf_net axi_gpio_2_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_output/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_2_GPIO2 [get_bd_intf_ports rgb_led] [get_bd_intf_pins axi_gpio_output/GPIO2]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_ddr/M00_AXI] [get_bd_intf_pins mig_7_for_ddr/S_AXI]
  connect_bd_intf_net -intf_net axi_periph_M00_AXI [get_bd_intf_pins axi_periph/M00_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net axi_periph_M01_AXI [get_bd_intf_pins axi_periph/M01_AXI] [get_bd_intf_pins microblaze_0_axi_intc/s_axi]
  connect_bd_intf_net -intf_net axi_periph_M02_AXI [get_bd_intf_pins axi_ethernetlite_0/S_AXI] [get_bd_intf_pins axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net axi_periph_M03_AXI [get_bd_intf_pins axi_periph/M03_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]
  connect_bd_intf_net -intf_net axi_periph_M04_AXI [get_bd_intf_pins axi_periph/M04_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net axi_periph_M05_AXI [get_bd_intf_pins axi_periph/M05_AXI] [get_bd_intf_pins axi_quad_spi_flash/AXI_LITE]
  connect_bd_intf_net -intf_net axi_periph_M06_AXI [get_bd_intf_pins axi_gpio_output/S_AXI] [get_bd_intf_pins axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_1_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_flash/SPI_0]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_cc_ddr_data/S_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins axi_cc_periph/S_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_cc_ddr_instr/S_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins MB_debug/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins mig_7_for_ddr/DDR3]

  # Create port connections
  connect_bd_net -net MB_cc_aresetn [get_bd_pins MB_rst/peripheral_aresetn] [get_bd_pins axi_cc_ddr_data/s_axi_aresetn] [get_bd_pins axi_cc_ddr_instr/s_axi_aresetn] [get_bd_pins axi_cc_periph/s_axi_aresetn]
  connect_bd_net -net MB_clk [get_bd_pins MB_rst/slowest_sync_clk] [get_bd_pins axi_cc_ddr_data/s_axi_aclk] [get_bd_pins axi_cc_ddr_instr/s_axi_aclk] [get_bd_pins axi_cc_periph/s_axi_aclk] [get_bd_pins clk_wiz_1/MB_clk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_local_memory/LMB_Clk]
  connect_bd_net -net MB_debug_rst [get_bd_pins MB_debug/Debug_SYS_Rst] [get_bd_pins MB_rst/mb_debug_sys_rst] [get_bd_pins axi_rst/mb_debug_sys_rst] [get_bd_pins ddr_int_rst/mb_debug_sys_rst] [get_bd_pins periph_rst/mb_debug_sys_rst]
  connect_bd_net -net MB_reset [get_bd_pins MB_rst/mb_reset] [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins microblaze_0_local_memory/SYS_Rst]
  connect_bd_net -net axi_ethernetlite_irpt [get_bd_pins axi_ethernetlite_0/ip2intc_irpt] [get_bd_pins intrpt_concat_0/In1]
  connect_bd_net -net axi_quad_spi_flash_irpt [get_bd_pins axi_quad_spi_flash/ip2intc_irpt] [get_bd_pins intrpt_concat_0/In4]
  connect_bd_net -net axi_timer_irpt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins intrpt_concat_0/In2]
  connect_bd_net -net axi_uartlite_0_irpt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins intrpt_concat_0/In3]
  connect_bd_net -net clk_wiz_0_axi_aclk [get_bd_pins axi_ddr/ACLK] [get_bd_pins axi_periph/ACLK] [get_bd_pins axi_rst/slowest_sync_clk] [get_bd_pins clk_wiz_0/axi_aclk]
  connect_bd_net -net clk_wiz_0_ddr_ref_clk [get_bd_pins clk_wiz_0/ddr_ref_clk] [get_bd_pins mig_7_for_ddr/clk_ref_i]
  connect_bd_net -net clk_wiz_0_ddr_sys_clk [get_bd_pins clk_wiz_0/ddr_sys_clk] [get_bd_pins mig_7_for_ddr/sys_clk_i]
  connect_bd_net -net clk_wiz_0_ext_spi_clk [get_bd_pins axi_quad_spi_flash/ext_spi_clk] [get_bd_pins clk_wiz_0/ext_spi_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins axi_rst/dcm_locked] [get_bd_pins clk_wiz_0/locked]
  connect_bd_net -net clk_wiz_1_eth_clk_25 [get_bd_ports eth_ref_clk] [get_bd_pins clk_wiz_0/eth_clk_25]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins MB_rst/dcm_locked] [get_bd_pins clk_wiz_1/locked] [get_bd_pins periph_rst/dcm_locked]
  connect_bd_net -net ddr_intrnl_aresetn [get_bd_pins axi_cc_ddr_data/m_axi_aresetn] [get_bd_pins axi_cc_ddr_instr/m_axi_aresetn] [get_bd_pins axi_ddr/M00_ARESETN] [get_bd_pins axi_ddr/S00_ARESETN] [get_bd_pins axi_ddr/S01_ARESETN] [get_bd_pins ddr_int_rst/peripheral_aresetn] [get_bd_pins mig_7_for_ddr/aresetn]
  connect_bd_net -net interconnect_aresetn [get_bd_pins axi_ddr/ARESETN] [get_bd_pins axi_periph/ARESETN] [get_bd_pins axi_rst/interconnect_aresetn]
  connect_bd_net -net microblaze_0_intr [get_bd_pins intrpt_concat_0/dout] [get_bd_pins microblaze_0_axi_intc/intr]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_cc_ddr_data/m_axi_aclk] [get_bd_pins axi_cc_ddr_instr/m_axi_aclk] [get_bd_pins axi_ddr/M00_ACLK] [get_bd_pins axi_ddr/S00_ACLK] [get_bd_pins axi_ddr/S01_ACLK] [get_bd_pins ddr_int_rst/slowest_sync_clk] [get_bd_pins mig_7_for_ddr/ui_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins ddr_int_rst/ext_reset_in] [get_bd_pins mig_7_for_ddr/ui_clk_sync_rst]
  connect_bd_net -net mig_mmcm_locked [get_bd_pins ddr_int_rst/dcm_locked] [get_bd_pins mig_7_for_ddr/mmcm_locked]
  connect_bd_net -net periph_clk [get_bd_pins axi_cc_periph/m_axi_aclk] [get_bd_pins axi_ethernetlite_0/s_axi_aclk] [get_bd_pins axi_gpio_output/s_axi_aclk] [get_bd_pins axi_periph/M00_ACLK] [get_bd_pins axi_periph/M01_ACLK] [get_bd_pins axi_periph/M02_ACLK] [get_bd_pins axi_periph/M03_ACLK] [get_bd_pins axi_periph/M04_ACLK] [get_bd_pins axi_periph/M05_ACLK] [get_bd_pins axi_periph/M06_ACLK] [get_bd_pins axi_periph/S00_ACLK] [get_bd_pins axi_quad_spi_flash/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_1/periph_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins periph_rst/slowest_sync_clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net peripheral_aresetn [get_bd_pins axi_cc_periph/m_axi_aresetn] [get_bd_pins axi_ethernetlite_0/s_axi_aresetn] [get_bd_pins axi_gpio_output/s_axi_aresetn] [get_bd_pins axi_periph/M00_ARESETN] [get_bd_pins axi_periph/M01_ARESETN] [get_bd_pins axi_periph/M02_ARESETN] [get_bd_pins axi_periph/M03_ARESETN] [get_bd_pins axi_periph/M04_ARESETN] [get_bd_pins axi_periph/M05_ARESETN] [get_bd_pins axi_periph/M06_ARESETN] [get_bd_pins axi_periph/S00_ARESETN] [get_bd_pins axi_quad_spi_flash/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins periph_rst/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net reset_input [get_bd_ports reset] [get_bd_pins MB_rst/ext_reset_in] [get_bd_pins axi_rst/ext_reset_in] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins clk_wiz_1/resetn] [get_bd_pins mig_7_for_ddr/sys_rst] [get_bd_pins periph_rst/ext_reset_in]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins util_ds_buf_0/BUFG_I]
  connect_bd_net -net util_ds_buf_0_BUFG_O [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins util_ds_buf_0/BUFG_O]
  connect_bd_net -net xadc_irpt [get_bd_pins intrpt_concat_0/In0] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
  connect_bd_net -net xadc_wiz_0_temp_out [get_bd_pins mig_7_for_ddr/device_temp_i] [get_bd_pins xadc_wiz_0/temp_out]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40E00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] SEG_axi_ethernetlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_output/S_AXI/Reg] SEG_axi_gpio_2_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_flash/AXI_LITE/Reg] SEG_axi_quad_spi_flash_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x10000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7_for_ddr/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x10000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mig_7_for_ddr/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg

  # Exclude Address Segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_output/S_AXI/Reg] SEG_axi_gpio_led_Reg
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Instruction/SEG_axi_gpio_led_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_quad_spi_flash/AXI_LITE/Reg] SEG_axi_quad_spi_flash_Reg
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Instruction/SEG_axi_quad_spi_flash_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Instruction/SEG_axi_timer_0_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Instruction/SEG_microblaze_0_axi_intc_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Instruction/SEG_xadc_wiz_0_Reg]



  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


