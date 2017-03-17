
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name VUMeter -dir "D:/Student Data/XiLinx ISE Design Suite/VUMeter/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Student Data/XiLinx ISE Design Suite/VUMeter/VUMeter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Student Data/XiLinx ISE Design Suite/VUMeter} }
set_property target_constrs_file "VUMeter.ucf" [current_fileset -constrset]
add_files [list {VUMeter.ucf}] -fileset [get_property constrset [current_run]]
link_design
