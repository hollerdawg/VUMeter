
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name VUMeter -dir "D:/Student Data/XiLinx ISE Design Suite/VUMeter/planAhead_run_1" -part xc6slx16csg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/Student Data/XiLinx ISE Design Suite/VUMeter/VUMeter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Student Data/XiLinx ISE Design Suite/VUMeter} }
set_property target_constrs_file "VUMeter.ucf" [current_fileset -constrset]
add_files [list {VUMeter.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/Student Data/XiLinx ISE Design Suite/VUMeter/VUMeter.ncd"
if {[catch {read_twx -name results_1 -file "D:/Student Data/XiLinx ISE Design Suite/VUMeter/VUMeter.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/Student Data/XiLinx ISE Design Suite/VUMeter/VUMeter.twx\": $eInfo"
}
