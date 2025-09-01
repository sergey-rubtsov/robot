
________________________________________________________________________
	  PWM设计实例说明
-------------------------------------------------------------------------
目标器件:GW1N-LV9QN88C6/I5
---------------------------------------------------------------------------
1、PWM_Readme即本文档是文件结构说明。
2、project中是调用PWM IP Core的工程。
3、simulation中是仿真的脚本。
4、tb中是仿真文件
5、仿真说明：
       modelsim仿真：
（1）	打开modelsim软件
（2）	进入目录simulation/modelsim
（3）	运行命令do cmd.do
   vcs仿真：
（1）	在simulation/vcs目录下运行vcs.sh，即可开始仿真并生成.fsdb文件
（2）	在simulation/vcs目录下运行verdi.sh，即可使用verdi软件查看波形
________________________________________________________________________
	  PWM Read Me
-------------------------------------------------------------------------
Object device: GW1N-LV9QN88C6/I5
---------------------------------------------------------------------------
1.The "PWM_Readme" is a structure description of the files.
2.The FPGA project in the directory “project” is a fpga case which designed with PWM IP Core. 
3.The files in the directory "simulation" is a script of the simulation.
4.The files in the directory "tb" is the testbench and the library of the vo simulation.
5.Simulation description:
	modelsim:
(1)	Launch modelsim 
(2)	Change directory to “simulation/modelsim”
(3)	run “do cmd.do”
vcs:
(1)	run “vcs.sh” in directory “simulation/vcs”,the script can run simulation and creat .fsdb file
(2)	run “verdi.sh” in directory “simulation/vcs”,the script can lauch verdi and view wave
