# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
We learned about sequential logic and circuits that allow multiple bytes to be saved and passed through using mux and demux from previous lessons to select which set of D-Latches, or registers, we want to save to.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural implementation of latches will remember their previous inputs but they will also throw combinational logic loop error and will not synthesize. We must use behavioral implementations so that verilog knows that we would like to work with registers.

### What is the meaning of always @(*) in a sensitivity block?
The always block allows us to use both continuous and sequential variable assignments. If we are to use register outputs, we must use the always command and tell vivado which signals the register outputs are sequentially dependant upon. 

### What importance is memory to digital circuits?
Without memory, we would constantly read inputs and change outputs and would not be able to store data or wait for a combination of updates. By having memory, digital circuits can be made much more powerful by including wait-states/interupts, enables and disables, and data storage.
