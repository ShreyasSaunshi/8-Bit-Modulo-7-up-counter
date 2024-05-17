# 8-Bit-Modulo-7-up-counter

## Problem Statement: Implementing an 8-bit Modulo-7 Counter
Implement a structural Verilog code for an 8-bit modulo-7 counter using D flip-flops. Develop an OOP-based test bench to test the counter’s functionality. Treat the DUT as a black box and compare the output with the expected results. Inputs: Clock, Reset.
## Theory:
A modulo-7 counter is a sequential circuit that counts from 0 to 6 and then resets back to 0. An 8-bit counter provides more than enough states (0-255), but by implementing a modulo operation, we restrict the count to 7 states. D flip-flops are used to store each bit of the counter, with their outputs determining the current state of the counter.

1. **D Flip-Flop**:
   - A D flip-flop is a memory element that captures the value of the D-input at a specific portion of the clock cycle (usually the rising edge) and holds this value until the next clock cycle.
   - The characteristic equation of a D flip-flop is: \( Q_{next} = D \)

2. **Counter Design**:
   - **State Encoding**: Since we need to count from 0 to 6, we can use 3 bits to represent these states (binary 000 to 110).
   - **Logic Implementation**: The next state logic for each flip-flop is designed using combinational logic that defines the behavior of the counter for each state transition.

3. **Modulo Operation**:
   - To reset the counter after reaching 6 (binary 110), additional logic is added that resets the counter to 0 (binary 000) when the next state would transition to 7 (binary 111).

## Design and Implementation:
1. **Schematic Design**:
   - Create a schematic using D flip-flops for each bit of the counter.
   - Implement combinational logic to handle state transitions and the modulo-7 reset.

2. **OOP-Based Test Bench**:
   - Develop a test bench using an object-oriented programming approach to simulate and verify the counter's operation.
   - The test bench includes classes and objects to represent the counter, the clock, and the test scenarios.

## Results:
1. **Simulation Outputs**:
   - Provide simulation waveforms demonstrating the counter's correct operation through multiple cycles, showing counts from 0 to 6 and the reset to 0.
   - Include the results of the OOP-based test bench, highlighting successful test cases and any edge cases handled.

2. **Schematic**:
   - Include the schematic diagrams of the 8-bit modulo-7 counter showing the D flip-flops and the combinational logic for state transitions.

## Conclusion:
The project successfully demonstrates the implementation of an 8-bit modulo-7 counter using D flip-flops. The use of an OOP-based test bench allows for systematic and scalable verification of the counter's functionality.

## References
- [Understanding D Flip-Flops](https://www.electronics-tutorials.ws/sequential/seq_4.html)
- [Design of Counters](https://www.tutorialspoint.com/digital_circuits/digital_circuits_counters.htm)
- [Object-Oriented Programming in Test Benches](https://www.edaplayground.com/)
