vlib work
vlog *.*v
vsim -voptargs=+acc work.DIG_FEEDFWD_TB
do wave.do
run -all