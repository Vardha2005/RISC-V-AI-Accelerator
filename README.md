# RISC-V Processor with AI Accelerator (RTL Design)

> RTL implementation of the core modules of a single-cycle RISC-V processor integrated with a simplified AI accelerator architecture using Verilog HDL.

---

## Project Overview

This project demonstrates the RTL design and modular implementation of a RISC-V based processor along with a simplified AI accelerator architecture inspired by systolic arrays.

The objective of this project is to understand processor datapath design, control logic, memory architecture, and hardware acceleration concepts for Edge AI applications.

The design is written completely in **Verilog HDL** and is intended for FPGA implementation using **Xilinx Vivado**.

---

## Features

- Modular RTL Design
- Single Cycle RISC-V Datapath
- Program Counter
- Instruction Memory
- Register File
- ALU
- Immediate Generator
- Control Unit
- ALU Control
- Data Memory
- Multiplexers
- Branch Address Generation
- Processing Element (MAC)
- Simplified Systolic Array
- Accelerator Controller
- Individual Testbenches for Every Module

---

# Processor Architecture

```

                 +--------------------+
                 | Program Counter    |
                 +---------+----------+
                           |
                           ▼
                 +--------------------+
                 | Instruction Memory |
                 +---------+----------+
                           |
                     Instruction
                           |
         +-----------------+------------------+
         |                                    |
         ▼                                    ▼
 Control Unit                   Immediate Generator
         |                                    |
         ▼                                    ▼
   Register File -----------------------> ALU Control
         |                                    |
         ▼                                    ▼
               ALU <----------------------------
                |
                ▼
          Data Memory
                |
                ▼
         Write Back MUX
                |
                ▼
         Register File

```

---

# AI Accelerator Architecture

```

          A Inputs

             ↓

+------+------+------+------+
| PE | PE | PE | PE |
+------+------+------+------+
| PE | PE | PE | PE |
+------+------+------+------+
| PE | PE | PE | PE |
+------+------+------+------+
| PE | PE | PE | PE |
+------+------+------+------+

             ↓

        Output Matrix

```

---

# Repository Structure

```

RISC-V-AI-Accelerator

│

├── RTL

│ ├── program_counter.v

│ ├── instruction_memory.v

│ ├── register_file.v

│ ├── alu.v

│ ├── immediate_generator.v

│ ├── control_unit.v

│ ├── alu_control.v

│ ├── data_memory.v

│ ├── pc_adder.v

│ ├── mux2to1.v

│ ├── branch_adder.v

│ ├── writeback_mux.v

│ ├── cpu_top.v

│ ├── processing_element.v

│ ├── systolic_array.v

│ ├── accelerator_controller.v

│ └── top.v

│

├── Testbench

│ ├── tb_program_counter.v

│ ├── tb_instruction_memory.v

│ ├── tb_register_file.v

│ ├── tb_alu.v

│ ├── tb_immediate_generator.v

│ ├── tb_control_unit.v

│ ├── tb_alu_control.v

│ ├── tb_data_memory.v

│ ├── tb_pc_adder.v

│ ├── tb_mux2to1.v

│ ├── tb_branch_adder.v

│ ├── tb_writeback_mux.v

│ ├── tb_cpu.v

│ ├── tb_processing_element.v

│ ├── tb_systolic_array.v

│ ├── tb_accelerator_controller.v

│ └── tb_top.v

│

├── Images

├── Simulation

├── FPGA

├── docs

├── README.md

├── LICENSE

└── .gitignore

```

---

# Design Flow

```

RTL Design

↓

Functional Simulation

↓

Waveform Verification

↓

Synthesis

↓

Implementation

↓

Bitstream Generation

↓

FPGA Validation

```

---

# Technologies Used

- Verilog HDL
- Xilinx Vivado
- RTL Design
- Digital Logic Design
- FPGA Design
- Computer Architecture

---

# Processor Modules

| Module | Description |
|---------|-------------|
| Program Counter | Stores instruction address |
| Instruction Memory | Stores program instructions |
| Register File | 32 General Purpose Registers |
| ALU | Arithmetic & Logic Operations |
| Immediate Generator | Generates instruction immediates |
| Control Unit | Generates processor control signals |
| ALU Control | Decodes ALU operation |
| Data Memory | Supports load/store operations |
| PC Adder | Generates PC+4 |
| Branch Adder | Computes branch target |
| Multiplexer | Datapath selection |
| Write Back MUX | Register write-back selection |

---

# AI Accelerator Modules

| Module | Description |
|---------|-------------|
| Processing Element | Multiply-Accumulate (MAC) Unit |
| Simplified Systolic Array | Parallel MAC Architecture |
| Accelerator Controller | Controls accelerator execution |

---

# Simulation

Every RTL module has an independent Verilog testbench for functional verification.

Simulation verifies:

- Arithmetic operations
- Register read/write
- Memory access
- Control signals
- Program Counter operation
- Processing Element MAC computation
- Accelerator Controller timing

---

# FPGA Target

This project is intended for implementation using:

- Xilinx Vivado
- Artix-7 FPGA
- Basys 3 FPGA (recommended)

---

# Future Improvements

- Full RV32I ISA Support
- Pipelined Processor
- Hazard Detection Unit
- Forwarding Unit
- Branch Prediction
- Cache Memory
- AXI Interface
- Fully Connected 4×4 Systolic Array
- Matrix Multiplication Accelerator
- CNN Inference Engine
- FPGA Performance Evaluation

---

# Learning Outcomes

This project demonstrates understanding of:

- RTL Design
- Computer Architecture
- Processor Datapath Design
- Control Unit Design
- FPGA Development Flow
- Hardware Acceleration
- AI Accelerator Concepts
- Verilog HDL

---

# Author

**Vardha Goyal**

Electronics & VLSI Engineering

Thapar Institute of Engineering & Technology

---

## License

This project is licensed under the MIT License.
