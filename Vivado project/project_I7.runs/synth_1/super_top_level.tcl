# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_verilog -library xil_defaultlib -sv {
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/new/Output.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/new/Input.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/zero.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/PC_somador.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/PC.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/mux3.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/mem.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/IR.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/ex_memory.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/banco_registradores.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/ALU.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/Bloco_de_Controle.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/Unidade_controladora.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/new/decoder_7seg.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/datapath.sv}
  {C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/sources_1/imports/Vers�o 2/super_top_level.sv}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/constrs_1/imports/Downloads/Basys3_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/project_I7.srcs/constrs_1/imports/Downloads/Basys3_Master.xdc}}]


synth_design -top super_top_level -part xc7a35tcpg236-1


write_checkpoint -force -noxdef super_top_level.dcp

catch { report_utilization -file super_top_level_utilization_synth.rpt -pb super_top_level_utilization_synth.pb }
