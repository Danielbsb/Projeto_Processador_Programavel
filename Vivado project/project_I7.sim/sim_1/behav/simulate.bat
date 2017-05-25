@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim top_tb_behav -key {Behavioral:sim_1:Functional:top_tb} -tclbatch top_tb.tcl -view C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/top_tb_behav1.wcfg -view C:/Users/Daniel/Documents/Projeto_Processadores/Projeto_Processador_Programavel/Vivado project/top_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
