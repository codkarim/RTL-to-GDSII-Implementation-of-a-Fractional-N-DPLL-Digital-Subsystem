onerror {resume}
radix fpoint 8
quietly WaveActivateNextPane {} 0
add wave -noupdate /DIG_FEEDBCK_TB/DUT/RST
add wave -noupdate -color {Dark Orchid} /DIG_FEEDBCK_TB/DUT/FB_CLK
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/CNTRL_WIDTH
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/PHE_width
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/FCW_WIDTH
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/DCW_WIDTH
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/FRAC_WIDTH
add wave -noupdate -expand -group FB_PARAMATERS /DIG_FEEDBCK_TB/DUT/INT_WIDTH
add wave -noupdate -expand -group {FB_INPUT
} /DIG_FEEDBCK_TB/DUT/TDC_OUT
add wave -noupdate -expand -group {FB_INPUT
} -radix unsigned /DIG_FEEDBCK_TB/DUT/FCW
add wave -noupdate -expand -group {FB_INTERNAL
} -radix unsigned /DIG_FEEDBCK_TB/DUT/FRAC_IN
add wave -noupdate -expand -group {FB_INTERNAL
} -radix unsigned /DIG_FEEDBCK_TB/DUT/INTEGER_IN
add wave -noupdate -expand -group {FB_INTERNAL
} /DIG_FEEDBCK_TB/DUT/Q_ERR_SIGN
add wave -noupdate -expand -group {FB_INTERNAL
} -color Cyan -format Analog-Step -height 74 -max 1048574.0 -radix unsigned /DIG_FEEDBCK_TB/DUT/Q_ERR_UNSIGN
add wave -noupdate -expand -group {FB_INTERNAL
} -color {Dark Orchid} /DIG_FEEDBCK_TB/DUT/DSM_out
add wave -noupdate -expand -group {FB_INTERNAL
} -color Cyan -height 15 -max 375.0 -min 256.0 -radix unsigned /DIG_FEEDBCK_TB/DUT/Kcal
add wave -noupdate -expand -group {FB_OUTPUT
} -color Gold /DIG_FEEDBCK_TB/DUT/LMS_OV_FL
add wave -noupdate -expand -group {FB_OUTPUT
} -color Gold /DIG_FEEDBCK_TB/DUT/LMS_UN_FL
add wave -noupdate -expand -group {FB_OUTPUT
} -radix unsigned /DIG_FEEDBCK_TB/DUT/MMD_CNTRL
add wave -noupdate -expand -group {FB_OUTPUT
} -radix unsigned /DIG_FEEDBCK_TB/DUT/DCW
add wave -noupdate -expand -group calc_avg /DIG_FEEDBCK_TB/DO_OPER/num_samples
add wave -noupdate -expand -group calc_avg /DIG_FEEDBCK_TB/DO_OPER/i
add wave -noupdate -expand -group calc_avg /DIG_FEEDBCK_TB/DO_OPER/sum
add wave -noupdate -expand -group calc_avg /DIG_FEEDBCK_TB/DO_OPER/avg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {582319 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2940 ns}
