vlib work
vlog *.*v
vsim -voptargs=+acc work.DIG_FEEDBCK_TB
do wave.do
run -all