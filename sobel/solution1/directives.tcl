############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_unroll "sobel/SLIDE_WINDOW"
set_directive_pipeline "sobel/IMG_W"
set_directive_dependence -variable line_buffer -type inter -dependent false "sobel/IMG_H"
set_directive_array_map -mode horizontal "sobel" line_buffer
set_directive_array_map -mode horizontal "sobel" window_buffer
set_directive_stream -dim 2 "sobel" input_image
set_directive_stream -dim 2 "sobel" output_image
set_directive_array_map -mode horizontal "sobel" line_buffer
set_directive_array_map "sobel" window_buffer
