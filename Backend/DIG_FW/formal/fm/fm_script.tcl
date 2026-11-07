########################### Define Top Module ############################
                                                   
set top_module DIG_FEEDFWD

###################################################################
########################### Setup Paths #############################
###################################################################

# Add paths to search path
lappend search_path /home/IC/GRAD_PROJECT/DIG_FW/formal/std_cells
lappend search_path /home/IC/GRAD_PROJECT/DIG_FW/formal/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable

set synopsys_auto_setup true

# Formality Setup File

set_svf "../syn/$top_module.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Files

read_sverilog  -container Ref "DIG_FEEDFWD.sv"
read_sverilog  -container Ref "DLF.sv"
read_sverilog  -container Ref "DSM_MASH_1_1.sv"

# Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 

set_reference_design $top_module
set_top $top_module

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files

read_verilog -netlist -container Imp "../syn/DIG_FEEDFWD_netlist.v" 

# Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design

set_implementation_design $top_module
set_top $top_module

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]

if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting #############################
 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

################# starting graphical user interface #######################

start_gui

###########################################################################

