# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {Board 49-26}  -suppress 
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/proyecto_integrador/rtl_projects/tx_top/tx_top.cache/wt [current_project]
set_property parent.project_path D:/proyecto_integrador/rtl_projects/tx_top/tx_top.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/proyecto_integrador/rtl_projects/tx_top/info_ram_addr_counter.v
  D:/proyecto_integrador/rtl_projects/tx_top/tx_top.srcs/sources_1/new/splitter.v
  D:/proyecto_integrador/rtl_projects/tx_top/info_block_ram.v
  D:/proyecto_integrador/rtl_projects/tx_filter/tx_filter.srcs/sources_1/new/tx_filter.v
  D:/proyecto_integrador/rtl_projects/tx_top/tx_top.srcs/sources_1/new/splitter_top.v
  D:/proyecto_integrador/rtl_projects/tx_top/fcsg.v
  D:/proyecto_integrador/rtl_projects/tx_top/tx_top.srcs/sources_1/new/tx_top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top tx_top -part xc7k70tfbv676-1


write_checkpoint -force -noxdef tx_top.dcp

catch { report_utilization -file tx_top_utilization_synth.rpt -pb tx_top_utilization_synth.pb }
