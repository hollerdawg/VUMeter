
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name VUMeter -dir "D:/Student Data/XiLinx ISE Design Suite/VUMeter/planAhead_run_3" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "VUMeter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../Desktop/PmodMicRefComp.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {VUMeter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top VUMeter $srcset
add_files [list {VUMeter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
