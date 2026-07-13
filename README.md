# Synchronous FIFO: RTL to GDSII Physical Design

## Project Overview
Implemented a synchronous FIFO through the complete Synthesis-to-GDSII ASIC design flow using the Sky130 open-source PDK. The project focuses on timing-driven physical design, clock tree synthesis, static timing analysis (STA), physical verification, and signoff using the OpenLane/OpenROAD toolchain.

---

## FIFO Features

| Feature | Description |
|---------|-------------|
| FIFO Type | Synchronous FIFO |
| Data Width | 8 bit |
| FIFO Depth | 16 Entries |
| Read Operation | Synchronous Read |
| Write Operation | Synchronous Write |
| Status Flags | Full, Empty |
| Clock | Single Clock Domain |
| Reset | Synchronous |

---

# Physical Design Flow

✔ Logic Synthesis (Yosys)

✔ Floorplanning

✔ Power Distribution Network (PDN)

✔ Global Placement

✔ Detailed Placement

✔ Clock Tree Synthesis (CTS)

✔ Global Routing

✔ Detailed Routing

✔ Static Timing Analysis (STA)

✔ Physical Verification

✔ Signoff

---

# Tools Used

- Verilog HDL
- OpenLane
- OpenROAD
- Yosys
- RePlAce
- TritonCTS
- FastRoute
- TritonRoute
- OpenSTA
- Magic VLSI
- Netgen
- KLayout
- SkyWater SKY130 PDK

---

# Design Configuration

Technology Node = SkyWater 130nm (sky130_fd_sc_hd)

Clock Frequency = <100MHZ>

Clock Period = <10 ns Period>

Die Dimensions = 220.80 µm × 225.76 µm

Core Dimensions = 176.64 µm × 181.60 µm

Total Core Area = 32,074.62 µm²

Core Utilization =  30%

Placement Density = 0.45

---

# Timing Analysis (STA)

The primary objective of this implementation was achieving timing closure while maintaining a clean physical design.

### Timing Checks Performed

- Setup Timing Analysis
- Hold Timing Analysis
- Worst Negative Slack (WNS)
- Total Negative Slack (TNS)
- Clock Latency Analysis
- Clock Skew Analysis
- Critical Path Analysis
- Timing Report Generation
- Post-CTS Timing Verification
- Post-Route Timing Verification

### Signoff Timing Status

Setup Violations = 0

Hold Violations = 0

WNS = 0

TNS = 0

Timing Status = PASSED

---

# Clock Tree Synthesis (CTS)

CTS was performed to distribute the clock across sequential elements while minimizing skew and insertion delay.

Analysis Included:

- Clock Buffer Insertion =
- Clock Skew Optimization
- Clock Latency Optimization
- Timing Re-analysis after CTS

---

# Physical Verification

### DRC

DRC_CHECK = 0

### LVS

LVS_CHECK = 0

### Antenna

ANTENNA_CHECK = 0

---

# Screenshots

- RTL Schematic
- Floorplan
- Placement
- CTS
- Routing
- Congestion Map
- Timing Report
- Final Layout (Magic)
- Final GDSII (KLayout)

---

# Key Learning Outcomes

- Complete RTL-to-GDSII ASIC implementation flow.
- Timing-driven physical design methodology.
- Static Timing Analysis (STA) using OpenSTA.
- Clock Tree Synthesis (CTS) optimization.
- Routing optimization and congestion analysis.
- DRC, LVS, and Antenna signoff verification.
- Understanding of setup/hold timing closure and critical path optimization.

---

# Repository Links

Routing Layout

<Routing Image Link>

Final GDSII Layout

<GDSII Link>

Timing Report

<STA Report Link>

Magic Layout

<Magic Screenshot Link>
