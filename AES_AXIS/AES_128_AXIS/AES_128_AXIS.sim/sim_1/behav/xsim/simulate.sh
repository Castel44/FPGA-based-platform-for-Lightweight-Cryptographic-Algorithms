#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Jun 29 11:16:49 CEST 2018
# SW Build 2188600 on Wed Apr  4 18:39:19 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
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
ExecStep xsim AES128_axis_tb_behav -key {Behavioral:sim_1:Functional:AES128_axis_tb} -tclbatch AES128_axis_tb.tcl -log simulate.log