# TCL File Generated by Component Editor 14.0
# Thu Dec 31 11:58:49 CST 2015
# DO NOT MODIFY


# 
# TERASIC_AUTO_FOCUS "TERASIC_AUTO_FOCUS" v1.0
# Dee Zeng 2015.12.31.11:58:49
# auto focus simple fuction
# 

# 
# request TCL package from ACDS 14.0
# 
package require -exact qsys 14.0


# 
# module TERASIC_AUTO_FOCUS
# 
set_module_property DESCRIPTION "auto focus simple fuction"
set_module_property NAME TERASIC_AUTO_FOCUS
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Terasic Technologies Inc"
set_module_property AUTHOR "Dee Zeng"
set_module_property DISPLAY_NAME TERASIC_AUTO_FOCUS
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL TERASIC_AUTO_FOCUS
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file F_VCM.v VERILOG PATH F_VCM.v
add_fileset_file I2C_VCM_Config.v VERILOG PATH I2C_VCM_Config.v
add_fileset_file I2C_VCM_Controller.v VERILOG PATH I2C_VCM_Controller.v
add_fileset_file TERASIC_AUTO_FOCUS.v VERILOG PATH TERASIC_AUTO_FOCUS.v TOP_LEVEL_FILE
add_fileset_file VCM_CTRL_P.v VERILOG PATH VCM_CTRL_P.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL TERASIC_AUTO_FOCUS
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file F_VCM.v VERILOG PATH F_VCM.v
add_fileset_file I2C_VCM_Config.v VERILOG PATH I2C_VCM_Config.v
add_fileset_file I2C_VCM_Controller.v VERILOG PATH I2C_VCM_Controller.v
add_fileset_file TERASIC_AUTO_FOCUS.v VERILOG PATH TERASIC_AUTO_FOCUS.v
add_fileset_file VCM_CTRL_P.v VERILOG PATH VCM_CTRL_P.v


# 
# parameters
# 
add_parameter VIDEO_W INTEGER 800
set_parameter_property VIDEO_W DEFAULT_VALUE 800
set_parameter_property VIDEO_W DISPLAY_NAME VIDEO_W
set_parameter_property VIDEO_W TYPE INTEGER
set_parameter_property VIDEO_W UNITS None
set_parameter_property VIDEO_W ALLOWED_RANGES -2147483648:2147483647
set_parameter_property VIDEO_W HDL_PARAMETER true
add_parameter VIDEO_H INTEGER 480
set_parameter_property VIDEO_H DEFAULT_VALUE 480
set_parameter_property VIDEO_H DISPLAY_NAME VIDEO_H
set_parameter_property VIDEO_H TYPE INTEGER
set_parameter_property VIDEO_H UNITS None
set_parameter_property VIDEO_H ALLOWED_RANGES -2147483648:2147483647
set_parameter_property VIDEO_H HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point mm_ctrl
# 
add_interface mm_ctrl avalon end
set_interface_property mm_ctrl addressUnits WORDS
set_interface_property mm_ctrl associatedClock clock
set_interface_property mm_ctrl associatedReset reset
set_interface_property mm_ctrl bitsPerSymbol 8
set_interface_property mm_ctrl burstOnBurstBoundariesOnly false
set_interface_property mm_ctrl burstcountUnits WORDS
set_interface_property mm_ctrl explicitAddressSpan 0
set_interface_property mm_ctrl holdTime 0
set_interface_property mm_ctrl linewrapBursts false
set_interface_property mm_ctrl maximumPendingReadTransactions 0
set_interface_property mm_ctrl maximumPendingWriteTransactions 0
set_interface_property mm_ctrl readLatency 0
set_interface_property mm_ctrl readWaitTime 1
set_interface_property mm_ctrl setupTime 0
set_interface_property mm_ctrl timingUnits Cycles
set_interface_property mm_ctrl writeWaitTime 0
set_interface_property mm_ctrl ENABLED true
set_interface_property mm_ctrl EXPORT_OF ""
set_interface_property mm_ctrl PORT_NAME_MAP ""
set_interface_property mm_ctrl CMSIS_SVD_VARIABLES ""
set_interface_property mm_ctrl SVD_ADDRESS_GROUP ""

add_interface_port mm_ctrl s_chipselect chipselect Input 1
add_interface_port mm_ctrl s_read read Input 1
add_interface_port mm_ctrl s_write write Input 1
add_interface_port mm_ctrl s_readdata readdata Output 32
add_interface_port mm_ctrl s_writedata writedata Input 32
add_interface_port mm_ctrl s_address address Input 3
set_interface_assignment mm_ctrl embeddedsw.configuration.isFlash 0
set_interface_assignment mm_ctrl embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment mm_ctrl embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment mm_ctrl embeddedsw.configuration.isPrintableDevice 0


# 
# connection point din
# 
add_interface din avalon_streaming end
set_interface_property din associatedClock clock
set_interface_property din associatedReset reset
set_interface_property din dataBitsPerSymbol 8
set_interface_property din errorDescriptor ""
set_interface_property din firstSymbolInHighOrderBits true
set_interface_property din maxChannel 0
set_interface_property din readyLatency 1
set_interface_property din ENABLED true
set_interface_property din EXPORT_OF ""
set_interface_property din PORT_NAME_MAP ""
set_interface_property din CMSIS_SVD_VARIABLES ""
set_interface_property din SVD_ADDRESS_GROUP ""

add_interface_port din sink_data data Input 24
add_interface_port din sink_valid valid Input 1
add_interface_port din sink_ready ready Output 1
add_interface_port din sink_sop startofpacket Input 1
add_interface_port din sink_eop endofpacket Input 1


# 
# connection point dout
# 
add_interface dout avalon_streaming start
set_interface_property dout associatedClock clock
set_interface_property dout associatedReset reset
set_interface_property dout dataBitsPerSymbol 8
set_interface_property dout errorDescriptor ""
set_interface_property dout firstSymbolInHighOrderBits true
set_interface_property dout maxChannel 0
set_interface_property dout readyLatency 1
set_interface_property dout ENABLED true
set_interface_property dout EXPORT_OF ""
set_interface_property dout PORT_NAME_MAP ""
set_interface_property dout CMSIS_SVD_VARIABLES ""
set_interface_property dout SVD_ADDRESS_GROUP ""

add_interface_port dout source_data data Output 24
add_interface_port dout source_valid valid Output 1
add_interface_port dout source_ready ready Input 1
add_interface_port dout source_sop startofpacket Output 1
add_interface_port dout source_eop endofpacket Output 1


# 
# connection point Conduit
# 
add_interface Conduit conduit end
set_interface_property Conduit associatedClock clock
set_interface_property Conduit associatedReset reset
set_interface_property Conduit ENABLED true
set_interface_property Conduit EXPORT_OF ""
set_interface_property Conduit PORT_NAME_MAP ""
set_interface_property Conduit CMSIS_SVD_VARIABLES ""
set_interface_property Conduit SVD_ADDRESS_GROUP ""

add_interface_port Conduit vcm_i2c_sda vcm_i2c_sda Bidir 1
add_interface_port Conduit clk50 clk50 Input 1
add_interface_port Conduit vcm_i2c_scl vcm_i2c_scl Bidir 1

