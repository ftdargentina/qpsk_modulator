# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/proyecto_integrador/rtl_projects/sin_ram/sin_ram.cache/wt [current_project]
set_property parent.project_path D:/proyecto_integrador/rtl_projects/sin_ram/sin_ram.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/proyecto_integrador/rtl_projects/sin_ram/sin_ram.srcs/sources_1/new/sin_ram.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top sin_ram -part xc7k70tfbv676-1


write_checkpoint -force -noxdef sin_ram.dcp

catch { report_utilization -file sin_ram_utilization_synth.rpt -pb sin_ram_utilization_synth.pb }
