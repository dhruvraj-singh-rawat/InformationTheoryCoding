
## ITC (Channel Encoder) : Simulation Problems
### 1. What is Coding Gain. Let’s find out:

#### Case 1.

a) Take a binary sequence of any length (for ex.1000).

b) Add white Gaussian noise using randn function.

c) Receive y seq. at receiver and take binary decision ( if received noisy bit > 0 then 1, else 0).

d) Find out total error_1 between y and x.

e) find error rate = number error/total bits transmitted.



#### Case 2.


a) Take a binary sequence of any length (for ex.100).

b) Transmit every bit if 0 as “-1,-1,-1” and if 1 as “1,1,1”

c) Add white Gaussian noise using randn function to generated 3000 length sequence.

d) Receive y seq. at receiver and take binary decision from average of 3 bits at a time( if
received noisy bit > 0 then 1, else 0).

e) Find out total error _2 between y and x.

f) find error rate = number error/total bits transmitted.


### 2. Which error is greater error_1 or error_2 ? Why?


### 3. Repeat the exp. For different noise variances like 1, 0.5, 0.25, 0.125. or SNR DB =0 , 2, 4, 6, 8..20.
### using Snr_dB = 10 log (S/sigma^2) Take S = 1 in one case and take Sigma^2 = 1 in other case.


### 4. Plot logarithmic graph(use semilogy matlab function) for variance(x axis) Vs (error/total
### transmitted bits).


### 5. Mention the advantage and disadvantage of above experiment.


### 6. Make a generalize program where each bit can be coded as any arbitrary length. Like 0 can
### be”0000” or “00000” and similar for bit 1.
### 7. Conclude what is coding gain.
