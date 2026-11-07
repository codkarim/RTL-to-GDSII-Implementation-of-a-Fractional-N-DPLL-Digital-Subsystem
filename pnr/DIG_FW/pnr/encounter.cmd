#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Jul 14 04:21:56 2026                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell DIG_FEEDFWD
setUIVar rda_Input ui_netlist /home/ahesham/Grad_Projects/DIG_FW/dft/DIG_FEEDFWD_DFT.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Grad_Projects/DIG_FW/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Grad_Projects/DIG_FW/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Grad_Projects/DIG_FW/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Grad_Projects/DIG_FW/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Grad_Projects/DIG_FW/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Grad_Projects/DIG_FW/pnr/import/DIG_FEEDFWD.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Grad_Projects/DIG_FW/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Grad_Projects/DIG_FW/dft/DIG_FEEDFWD_DFT_func.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode    -sdc_files {../dft/DIG_FEEDFWD_DFT_func.sdc}
create_constraint_mode -name scan_mode    -sdc_files {../dft/DIG_FEEDFWD_DFT_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../dft/DIG_FEEDFWD_DFT_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode scan_mode 
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode scan_mode 
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view} \
		  -hold {hold1_analysis_view hold2_analysis_view hold3_analysis_view}
group
floorPlan -d 92 92 3.0 3.0 3.0 3.0
zoomBox 99.210 85.460 74.320 64.837
zoomBox 93.838 80.979 89.522 77.859
zoomBox 98.672 87.850 80.827 79.906
zoomBox -2.989 87.735 8.755 73.344
zoomBox -3.019 85.165 3.022 79.877
zoomBox 3.344 -2.183 6.798 12.785
zoomBox 5.641 -0.412 4.365 1.087
zoomBox 2.078 14.167 -15.998 5.762
zoomBox -2.297 89.117 7.373 82.094
zoomBox -0.790 88.318 1.879 86.257
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
zoomBox 61.830 10.482 16.239 -3.333
uiSetTool cutWire
editCutWire -x1 19.3455 -y1 0.092 -x2 19.3455 -y2 1.5675
editCutWire -x1 53.5715 -y1 -0.089 -x2 53.5715 -y2 1.5675
uiSetTool select
selectWire 19.3450 0.3900 53.5700 1.3900 5 VDD
setSelectedStripBoxState 0 ROUTED
uiSetTool stretchWire
editStretch x -1.19 low
editStretch x 1.24 high
uiSetTool defineArea pwrEpv:set_area_bbox
uiSetTool stretchWire
editPowerVia -bottom_layer METAL1 -area {18.077 1.49 19.501 0.1695} -add_vias 1 -top_layer METAL7
deselectAll
uiSetTool defineArea pwrEpv:set_area_bbox
uiSetTool stretchWire
editPowerVia -bottom_layer METAL1 -area {55.28 1.5675 53.3125 -0.115} -add_vias 1 -top_layer METAL7
zoomBox 54.892 -1.332 52.976 2.733
uiSetTool stretchWire
selectWire 53.5700 0.3900 91.7350 1.3900 5 VDD
editStretch x 0.085 low
deselectAll
selectWire 18.1550 0.3900 54.8100 1.3900 3 VDD
editStretch x -0.06 high
editStretch x -0.025 high
zoomBox 24.758 6.453 12.670 -1.031
editStretch x 0.035 low
deselectAll
selectWire 0.3900 0.3900 19.3450 1.3900 5 VDD
editStretch x -0.03 high
deselectAll
selectWire 0.3900 0.3900 19.3150 1.3900 5 VDD
editStretch x -0.025 high
deselectAll
selectWire 18.1900 0.3900 54.7250 1.3900 3 VDD
editStretch x 0.03 low
deselectAll
group
clearDrc
verifyGeometry -noMinArea
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 35 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
selectWire 4.7800 0.3900 5.7800 90.5050 6 VDD
deleteSelectedFromFPlan
selectWire 3.2800 1.8900 4.2800 89.0050 6 VSS
deleteSelectedFromFPlan
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
saveFPlan /home/ahesham/Grad_Projects/DIG_FW/pnr/DIG_FEEDFWD.fp
setDrawView fplan
uiSetTool obstruct
zoomBox -4.485 93.837 100.284 84.627
panPage 1 0
panPage -1 0
createObstruct -0.202 86.584 92.728 92.177
zoomBox 100.630 5.877 -2.067 -2.297
createObstruct -0.726 -1.097 92.990 3.044
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
setDrawView ameba
setDrawView place
setDrawView fplan
selectObject Module U0_DLF
deselectAll
zoomBox -30.505 71.617 -13.350 61.485
zoomBox -45.357 79.100 -4.140 39.380
selectObject Module U0_DLF
deselectAll
setDrawView ameba
setDrawView place
setDrawView fplan
windowSelect -24.058 82.785 -55.142 42.143
zoomBox -38.218 80.712 -55.488 37.193
setDrawView ameba
saveDesign /home/ahesham/Grad_Projects/DIG_FW/pnr/DIG_FEEDFWD_place.enc
setDrawView place
setDrawView ameba
setDrawView place
setDrawView fplan
setDrawView place
zoomBox -8.284 82.554 31.781 57.456
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_preCTS -outDir timingReports
panCenter 104.314 70.350
panCenter 145.244 88.138
panCenter 186.173 105.925
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
setDrawView ameba
setDrawView fplan
panCenter -50.653 66.091
setDrawView ameba
setDrawView fplan
setDrawView place
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postCTS -outDir timingReports
setNanoRouteMode -quiet -routeTopRoutingLayer 6
routeDesign -globalDetail -viaOpt -wireOpt
clearDrc
verifyGeometry -noMinArea
verifyGeometry -noMinArea
zoomBox -8.630 57.456 16.008 46.633
zoomBox -1.831 55.843 2.913 53.492
clearDrc
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
routeDesign -globalDetail -viaOpt -wireOpt
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postRoute -outDir timingReports
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
zoomBox -16.483 91.151 44.631 46.455
zoomBox -3.952 58.404 10.998 49.201
zoomBox -1.173 56.865 2.135 54.886
zoomBox -9.896 67.127 12.440 53.541
uiSetTool moveWire
selectWire 0.3900 0.3900 1.3900 90.5050 6 VDD
editMove x 0.09
deselectAll
zoomBox -3.794 92.916 10.252 80.252
zoomBox -2.800 91.418 2.112 87.816
zoomBox -3.909 91.995 33.163 65.054
zoomBox -2.246 90.922 8.819 82.831
zoomBox -3.909 92.456 38.574 65.400
zoomBox -2.628 91.102 9.468 84.330
zoomBox -0.860 90.078 1.814 87.882
zoomBox -3.219 93.606 14.972 86.353
zoomBox -1.387 92.138 -1.604 92.438
zoomBox -3.909 93.837 28.328 85.663
zoomBox -0.717 91.942 4.623 90.108
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
verifyProcessAntenna -reportfile DIG_FEEDFWD.antenna.rpt -leffile DIG_FEEDFWD.antenna.lef -error 1000
checkFiller -highlight true
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix DIG_FEEDFWD_postRoute -outDir timingReports
saveNetlist export/ALU_TOP.v
saveNetlist export/ALU_TOP_pg.v -includePowerGround
rcOut -spf export/ALU_TOP.spf
delayCal -sdf export/ALU_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/ALU_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
saveNetlist export/DIG_FEEDFWD.v
saveNetlist export/DIG_FEEDFWD_pg.v -includePowerGround
rcOut -spf export/DIG_FEEDFWD.spf
delayCal -sdf export/DIG_FEEDFWD.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/DIG_FEEDFWD.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
saveDesign /home/ahesham/Grad_Projects/DIG_FW/pnr/DIG_FEEDFWD.enc
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
zoomBox 96.247 94.901 -2.396 -1.049
zoomBox 95.710 93.933 -3.267 -2.970
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
