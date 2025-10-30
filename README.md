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
We learned about sequential logic and circuits that allow multiple bytes to be passed through while using mux and demux from previous lessons to select the proper output.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural implementation of latches shows that the circuits remember their previous inputs and would error out of the combinational logic.

### What is the meaning of always @(*) in a sensitivity block?
Contain regular, continuous assignments wherein no memory is needed.

### What importance is memory to digital circuits?
Without memory, we would need to constantly read inputs and change output. Thus, never able to remember a previous input and fail to save anything.
