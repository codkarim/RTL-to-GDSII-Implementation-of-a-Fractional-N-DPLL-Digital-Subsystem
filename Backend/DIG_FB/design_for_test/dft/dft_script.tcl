
########################### Define Top Module ############################
                                                   
set top_module DIG_FEEDBCK

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

lappend search_path /home/IC/GRAD_PROJECT/DIG_FB/design_for_test/std_cells
lappend search_path /home/IC/GRAD_PROJECT/DIG_FB/design_for_test/rtl

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
analyze -format $file_sv mux2X1.sv


elaborate -lib work DIG_FEEDBCK
elaborate -lib work CALC_DCW
elaborate -lib work CNTRL_MMD
elaborate -lib work DSM_1ST_ORDER
elaborate -lib work LMS
elaborate -lib work mux2X1

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

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 100

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile_ultra -no_auto_ungroup -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay  0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view  existing_dft -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view  existing_dft -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view  existing_dft -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode    -view  spec	 -active_state 1
set_dft_signal -port [get_ports SE]	   -type ScanEnable  -view  spec	 -active_state 1 -usage scan
set_dft_signal -port [get_ports SI] 	   -type ScanDatain  -view  spec
set_dft_signal -port [get_ports SO] 	   -type ScanDataout -view  spec
############################# Create Test Protocol #####################

create_test_protocol

###################### Pre-DFT Design Rule Checking ####################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ###############################

insert_dft

######################## Optimize Logic post DFT #######################

compile -scan -incremental

###################### Design Rule Checking post DFT ###################

dft_drc -verbose -coverage_estimate

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output DIG_FEEDBCK_DFT.v
write_file -format ddc	   -hierarchy -output DIG_FEEDBCK_DFT.ddc
write_sdc  -nosplit	   DIG_FEEDBCK_DFT.sdc
write_sdf  	   	   DIG_FEEDBCK_DFT.sdf

################# reporting #######################

report_area        -hierarchy  > area_dft.rpt
report_power       -hierarchy  > power_dft.rpt
report_clock 	   -attributes > clocks_dft.rpt
report_timing      -max_paths 100 -delay_type max > setup_dft.rpt 
report_timing      -max_paths 100 -delay_type min > hold_dft.rpt 
report_constraint  -all_violators   > constraints_dft.rpt
dft_drc -verbose -coverage_estimate > dft_drc_post_dft.rpt
report_port > ports.rpt

################# starting graphical user interface #######################

gui_start
#exit

#############################################################################
