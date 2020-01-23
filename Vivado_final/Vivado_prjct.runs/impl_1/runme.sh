#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/constantine/Xilinx/SDK/2017.2/bin:/home/constantine/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/home/constantine/Xilinx/Vivado/2017.2/bin
else
  PATH=/home/constantine/Xilinx/SDK/2017.2/bin:/home/constantine/Xilinx/Vivado/2017.2/ids_lite/ISE/bin/lin64:/home/constantine/Xilinx/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/constantine/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/constantine/Xilinx/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/media/constantine/Work/ARTY_A7/Vivado_prjct_final/Vivado_prjct.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log system_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source system_wrapper.tcl -notrace


