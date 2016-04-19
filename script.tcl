############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project sobel
set_top sobel
add_files sobel.cpp
add_files sobel.h
add_files -tb sobel_test.cpp
add_files -tb Input
add_files -tb Output
open_solution "solution1"
set_part  {xc7z020clg484-1}
create_clock -period 10

source "./directives.tcl"
csynth_design
export_design -evaluate verilog
