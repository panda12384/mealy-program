**# mealy-program**

A Mealy machine is a finite-state machine where the output depends on both the current state and the current input.
Implementing a Mealy machine in Verilog involves defining the states, inputs, outputs, and the logic that transitions between states and produces outputs.

![e2d10b5b5b8648aeba6e1240d6147657](https://github.com/panda12384/mealy-program/assets/160568759/1816a87a-032c-4581-b6a0-69334b8ee805)


State Encoding: The states are encoded as an enumerated type for clarity.
State Transition Logic: The always block sensitive to clk and reset handles state transitions. On reset, the machine goes to STATE0. Otherwise, it transitions to the next_state.
Next State and Output Logic: The combinational always block computes the next_state and the out based on the current_state and the in.


output:


![Screenshot 2024-07-02 172429](https://github.com/panda12384/mealy-program/assets/160568759/779493eb-98d1-4e5f-94a7-49a70e66996a)
