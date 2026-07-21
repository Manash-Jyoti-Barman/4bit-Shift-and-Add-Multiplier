# 4-Bit Sequential Shift-and-Add Multiplier in Verilog | FPGA Implementation using Xilinx Vivado

## Overview

This project implements a **4-bit sequential Shift-and-Add Multiplier** using **structural Verilog HDL**. The design follows a **controller–datapath architecture**, where a finite state machine (FSM) controls the multiplication process while the datapath performs arithmetic and shift operations.

The design was functionally verified through simulation and successfully implemented on a **Xilinx ZedBoard** using **Vivado Design Suite**.

---

## Features

* 4-bit sequential binary multiplier
* Shift-and-Add multiplication algorithm
* Structural and modular Verilog implementation
* Controller–Datapath architecture
* Finite State Machine (FSM) based control
* FPGA implementation and verification on Xilinx ZedBoard
* Designed without using the Verilog multiplication (`*`) operator

---

## Project Architecture

The design is organized into the following RTL modules:

| Module           | Description                                              |
| ---------------- | -------------------------------------------------------- |
| `shiftAddMult.v` | Top-level module integrating the controller and datapath |
| `controller.v`   | FSM that controls the multiplication sequence            |
| `datapath.v`     | Performs data movement and arithmetic operations         |
| `alu.v`          | Executes addition during multiplication                  |
| `counter.v`      | Counts multiplication cycles                             |
| `pipo.v`         | Parallel-In Parallel-Out register                        |
| `shiftregA.v`    | Shift register for accumulator                           |
| `shiftregQ.v`    | Shift register for multiplier                            |
| `shiftreg_top.v` | Shift register wrapper module                            |

---

## Project Directory

```text
.
├── rtl/
├── tb/
├── constraints/
├── reports/
├── screenshots/
├── bitstream/
└── README.md
```

---

## Design Flow

```text
Algorithm
      │
      ▼
RTL Design (Verilog)
      │
      ▼
Functional Simulation
      │
      ▼
Vivado Synthesis
      │
      ▼
Implementation
      │
      ▼
Bitstream Generation
      │
      ▼
FPGA Verification (ZedBoard)
```

---

## Tools Used

* Verilog HDL
* Xilinx Vivado Design Suite
* Xilinx ZedBoard FPGA

---

## FPGA Target

* **Development Board:** Xilinx ZedBoard
* **Design Type:** RTL Hardware Design
* **Implementation:** Vivado Design Suite

---

## Simulation

The design was verified using a dedicated Verilog testbench before FPGA implementation.

Simulation validates:

* Correct multiplication operation
* FSM sequencing
* Register shifting
* Accumulator updates
* Final product generation

> *Insert waveform screenshot in the `screenshots/` directory.*

---

## FPGA Implementation Results

The project was synthesized and implemented using Vivado.

Include the following reports in the `reports/` folder:

* Resource Utilization
* Timing Summary
* Power Report

Useful screenshots include:

* RTL Schematic
* Implemented Design
* Device Utilization
* Timing Summary
* Power Report

---

## Applications

* Digital arithmetic units
* Embedded systems
* Processor datapaths
* FPGA-based digital design
* Computer architecture laboratories
* VLSI education and prototyping

---

## Future Improvements

* Extend to parameterizable N-bit multiplication
* Implement signed multiplication
* Compare performance with Booth and Wallace multipliers
* Pipeline the architecture for higher throughput
* Evaluate area, power, and timing trade-offs

---

## Repository Structure

```text
rtl/            → Verilog source files
tb/             → Testbench
constraints/    → XDC constraint files
reports/        → Vivado synthesis and implementation reports
screenshots/    → RTL, waveforms, timing, and utilization images
bitstream/      → Generated FPGA bitstream (optional)
```

---

## Author

**Manash Jyoti Barman**

B.Tech in Electronics and Communication Engineering

Interested in Digital VLSI Design, FPGA Prototyping, RTL Design, and ASIC Physical Design.
