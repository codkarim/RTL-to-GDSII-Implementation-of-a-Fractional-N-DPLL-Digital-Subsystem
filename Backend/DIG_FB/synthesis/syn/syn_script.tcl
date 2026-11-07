########################### Define Top Module ############################
                                                   
set top_module DIG_FEEDBCK

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/GRAD_PROJECT/DIG_FB/synthesis/std_cells
lappend search_path /home/IC/GRAD_PROJECT/DIG_FB/synthesis/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################
puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_sv sverilog

analyze -format $file_sv DIG_FEEDBCK.sv
analyze -format $file_sv CALC_DCW.sv
analyze -format $file_sv CNTRL_MMD.sv
analyze -format $file_sv DSM_1ST_ORDER.sv
analyze -format $file_sv LMS.sv

elaborate -lib work DIG_FEEDBCK
elaborate -lib work CALC_DCW
elaborate -lib work CNTRL_MMD
elaborate -lib work DSM_1ST_ORDER
elaborate -lib work LMS

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"
#used to arrange paths at timing(setup,hold).rpt

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile_ultra -no_auto_ungroup

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output DIG_FEEDBCK_netlist.v
write_file -format ddc	   -hierarchy -output DIG_FEEDBCK_netlist.ddc
write_sdc  -nosplit	   DIG_FEEDBCK_netlist.sdc
write_sdf  	   	   DIG_FEEDBCK_netlist.sdf

################# reporting #######################

report_area        -hierarchy  > area.rpt
report_power       -hierarchy  > power.rpt
report_clock 	   -attributes > clocks.rpt
report_timing      -max_paths 100 -delay_type max > setup.rpt 
report_timing      -max_paths 100 -delay_type min > hold.rpt 
report_constraint  -all_violators > constraints.rpt

################# starting graphical user interface #######################

gui_start

#exit
