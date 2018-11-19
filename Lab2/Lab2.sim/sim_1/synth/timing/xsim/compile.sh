#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Wed Nov 14 17:50:27 WET 2018
# SW Build 2258646 on Thu Jun 14 20:02:38 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
echo "xvlog --incr --relax -prj circuit_tb_vlog.prj"
ExecStep xvlog --incr --relax -prj circuit_tb_vlog.prj 2>&1 | tee compile.log
echo "xvhdl --incr --relax -prj circuit_tb_vhdl.prj"
ExecStep xvhdl --incr --relax -prj circuit_tb_vhdl.prj 2>&1 | tee -a compile.log
