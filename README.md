# ARMv4 Processor Architecture 
![Microarchitecture](arch.png)

## Implementation

32-bit load/store architecture with Harvard-style organization
using the Altera DE1 FPGA board. The key components of the processor are 

* Instruction Memory
* Register File
* ALU
* Data Memory
* Program Counter 
* Controller

Addition was implemented using carry lookahead adders. 

## Instructions
The following instructions were implemented:

* ADD (add)
* LDR (load)
* STR (store)
* B   (branch)
