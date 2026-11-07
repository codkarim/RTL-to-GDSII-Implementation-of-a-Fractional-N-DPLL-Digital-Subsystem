

################################ Variables ####################################

set load_fp 1
set top_module DIG_FEEDBCK

########### Define Aspect Ratio (Length/Width) of Digital Macro  ############

if {$load_fp == 0} {

floorPlan -d 188 188 3.0 3.0 3.0 3.0

} else {

loadFPlan ./$top_module.fp

}


