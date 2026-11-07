onerror {resume}
radix fpoint 8
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Testbench_signals
} /DIG_FEEDFWD_TB/DUT/RST
add wave -noupdate -expand -group {Testbench_signals
} -color {Dark Orchid} /DIG_FEEDFWD_TB/DUT/REF_CLK
add wave -noupdate -expand -group {Testbench_signals
} -radix unsigned /DIG_FEEDFWD_TB/DUT/KP
add wave -noupdate -expand -group {Testbench_signals
} -radix unsigned /DIG_FEEDFWD_TB/DUT/KI
add wave -noupdate -expand -group {Testbench_signals
} -color Gold /DIG_FEEDFWD_TB/DUT/TDC_OUT
add wave -noupdate -expand -group {Testbench_signals
} /DIG_FEEDFWD_TB/DUT/DLF_Ext_En
add wave -noupdate -expand -group {Testbench_signals
} /DIG_FEEDFWD_TB/DUT/DLF_Ext_Data
add wave -noupdate -expand -group {Testbench_signals
} -radix unsigned /DIG_FEEDFWD_TB/DUT/DAC_IN
add wave -noupdate -expand -group {Testbench_signals
} -expand -group {calc_average
} /DIG_FEEDFWD_TB/calc_avg/num_samples
add wave -noupdate -expand -group {Testbench_signals
} -expand -group {calc_average
} /DIG_FEEDFWD_TB/calc_avg/i
add wave -noupdate -expand -group {Testbench_signals
} -expand -group {calc_average
} /DIG_FEEDFWD_TB/calc_avg/sum
add wave -noupdate -expand -group {Testbench_signals
} -expand -group {calc_average
} -color {Dark Orchid} /DIG_FEEDFWD_TB/calc_avg/avg
add wave -noupdate -group {DLF_SIGNALS
} /DIG_FEEDFWD_TB/DUT/U0_DLF/I_path
add wave -noupdate -group {DLF_SIGNALS
} /DIG_FEEDFWD_TB/DUT/U0_DLF/P_path
add wave -noupdate -group {DLF_SIGNALS
} -color {Dark Orchid} /DIG_FEEDFWD_TB/DUT/U0_DLF/acc_out
add wave -noupdate -group {DLF_SIGNALS
} -color {Dark Orchid} /DIG_FEEDFWD_TB/DUT/U0_DLF/PI_path
add wave -noupdate -group {DLF_SIGNALS
} -color {Violet Red} -format Analog-Step -height 74 -max 3839.9999999999995 /DIG_FEEDFWD_TB/DUT/U0_DLF/DLF_OUT_SIGN
add wave -noupdate -group {DLF_SIGNALS
} -color {Violet Red} /DIG_FEEDFWD_TB/DUT/U0_DLF/DLF_OUT
add wave -noupdate -expand -group {DLF Flags
} -color Gold /DIG_FEEDFWD_TB/DUT/U0_DLF/OV_FL
add wave -noupdate -expand -group {DLF Flags
} -color Gold /DIG_FEEDFWD_TB/DUT/U0_DLF/UN_FL
add wave -noupdate -expand -group {DSM_INPUT
} /DIG_FEEDFWD_TB/DUT/U0_MASH/DSM_IN
add wave -noupdate -expand -group {Mash First Stage
} -color Cyan /DIG_FEEDFWD_TB/DUT/U0_MASH/Q_IN_1
add wave -noupdate -expand -group {Mash First Stage
} -color Cyan /DIG_FEEDFWD_TB/DUT/U0_MASH/Q_ERR_1
add wave -noupdate -expand -group {Mash First Stage
} -radix unsigned /DIG_FEEDFWD_TB/DUT/U0_MASH/out_stage_1
add wave -noupdate -expand -group {Mash Second Stage
} -color Cyan /DIG_FEEDFWD_TB/DUT/U0_MASH/Q_IN_2
add wave -noupdate -expand -group {Mash Second Stage
} -color Cyan /DIG_FEEDFWD_TB/DUT/U0_MASH/Q_ERR_2
add wave -noupdate -expand -group {Mash Second Stage
} /DIG_FEEDFWD_TB/DUT/U0_MASH/out_stage_2
add wave -noupdate -expand -group {Mash Second Stage
} /DIG_FEEDFWD_TB/DUT/U0_MASH/out_stage_2_del
add wave -noupdate -expand -group {DSM_OUTPUT
} -radix unsigned /DIG_FEEDFWD_TB/DUT/U0_MASH/DSM_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {238609 ps} 0}
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
WaveRestoreZoom {0 ps} {966 ns}
