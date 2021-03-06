# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {2}  -id {Board 49-26}  -string {{WARNING: [Board 49-26] cannot add Board Part digilentinc.com:genesys2:part0:1.1 available at C:/Xilinx/Vivado/2016.1/data/boards/board_files/genesys2/H/board.xml as part xc7k325tffg900-2 specified in board_part file is either invalid or not available}}  -suppress 
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/proyecto_integrador/rtl_projects/mixer/mixer.cache/wt [current_project]
set_property parent.project_path D:/proyecto_integrador/rtl_projects/mixer/mixer.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/proyecto_integrador/rtl_projects/sin_ram/sin_ram.srcs/sources_1/new/sin_ram.v
  D:/proyecto_integrador/rtl_projects/mixer/mixer.srcs/sources_1/new/mixer.v
  D:/proyecto_integrador/rtl_projects/mixer/mixer.srcs/sources_1/new/top_mixer.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top top_mixer -part xc7k70tfbv676-1


write_checkpoint -force -noxdef top_mixer.dcp

catch { report_utilization -file top_mixer_utilization_synth.rpt -pb top_mixer_utilization_synth.pb }
