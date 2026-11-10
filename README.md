# RTL-to-GDSII Implementation of Digital Building Blocks for Fractional-N DPLL
## Project Overview
This project Design and implements the digital core of a fractional-N Digital Phase-Locked Loop (DPLL), developed in System Verilog and targeted at mixed-signal integration with analog blocks, With the development and verification of the following key digital blocks:

- Digital Loop Filter (DLF) using Type-II PI filter.
- LMS Correlator.
- First-Order Delta-Sigma Modulator (DSM).
- Second-Order Delta-Sigma Modulator (DSM) Using MASH 1-1 architecure.

Based on the DPLL architecture, the designed digital blocks were integrated into two independent digital paths:
- Feedforward Path: Integrates the Digital Loop Filter (DLF) with the Second-Order Sigma-Delta Modulator (DSM).
- Feedback Path: Integrates the First-Order Sigma-Delta Modulator (DSM) with the LMS Correlator.

Each path was taken separately through the complete ASIC flow, from RTL synthesis to GDSII.
Depending on the requirements of the analog side, the paths can be integrated as complete paths or as individual blocks to complete system-level modeling.

---

## System Architecture
The system operates by converting the phase difference between the reference and feedback signals into a digital value using a Time-to-Digital 
Converter (TDC). This error is filtered by the Digital Loop Filter (DLF) and generates the Digital Control Word (DCW) that is delivered to the Digital 
Delta Sigma Modulator (DDSM). The DDSM converts a 14-bit fractional input to a 5-bit integer output that is delivered to the Digitally Controlled 
Oscillator (DCO). The DCO adjusts frequency based on the DCW, and then the feedback loop locks the output to the desired frequency, while the 
correlator reduces spurious tones and enhances overall system performance.

<img width="1324" height="765" alt="image" src="https://github.com/user-attachments/assets/032f2b86-8b9c-4c3c-b469-78532e24650e" />

For more Details :
- Read [DPLL Illustation](./Documents/ELKHOLY-DISSERTATION-2016.pdf)
- Read [Digital Blocks Report](./Documents/RTL-to-GDSII Implementation of Digital Building Blocks for Fractional-N DPLL.pdf) 

