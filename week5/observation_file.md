# Program 1: 
### Statement: Write an assembly program to check whether a given number in an array of elements is divisible by 9

### Name of file:
div_by_9

### Observation - Explanation
	•	The program initializes a number (36) and a divisor (9) in registers  x5  and  x6 , respectively.
	•	It calculates the remainder of the number divided by the divisor using the rem instruction and stores it in  x7 .
	•	If the remainder is 0, the program sets  x10  to 1 (indicating divisibility). Otherwise,  x10  is set to 0.

### Observation - Single Cycle
	•	Cycles: 10 
	•	Frequency: 1 GHz 
	•	CPI: 1 
	•	IPC: 1 

### Observation - 5 Stage
	•	Cycles: 8 
	•	Frequency: 1 GHz 
	•	CPI: 1.5 
	•	IPC: 1 

### Memory Mapping
	•	0x00000004 : 36
	•	0x00000008 : 9

### Register Mapping
	•	x5: 36
	•	x6: 9 
	•	x7: 0 
	•	x10: 1 

### Snapshot
<img width="978" alt="Screenshot 2024-11-15 at 22 04 02" src="https://github.com/user-attachments/assets/3306f5ed-a4d0-47f6-83a1-3f79d2d8b882">
