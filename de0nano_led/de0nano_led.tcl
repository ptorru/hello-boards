# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
# File: /home/ptorru/sandbox/de0nano_led/de0nano_led.tcl
# Generated on: Tue Aug  3 14:20:32 2021

package require ::quartus::project

set_location_assignment PIN_R8 -to clk
set_location_assignment PIN_L3 -to cout[7]
set_location_assignment PIN_B1 -to cout[6]
set_location_assignment PIN_F3 -to cout[5]
set_location_assignment PIN_D1 -to cout[4]
set_location_assignment PIN_A11 -to cout[3]
set_location_assignment PIN_B13 -to cout[2]
set_location_assignment PIN_A13 -to cout[1]
set_location_assignment PIN_A15 -to cout[0]
set_location_assignment PIN_E1 -to enable
set_location_assignment PIN_J15 -to reset
