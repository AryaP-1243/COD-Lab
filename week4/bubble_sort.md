.data
array:  .word 5, 2, 9, 1, 5, 6    # Array to be sorted
n:      .word 6                 

.text
.global _start

_start:
    # Load the base address of the array and the number of elements
    la t0, array       
    lw t1, n           
    addi t1, t1, -1    
    li t2, 0            # Initialize outer loop counter i = 0

outer_loop:
    addi t3, t1, -1    

    slli t4, t2, 2      
    add t4, t4, t0     
    lw t5, 0(t4)        
    lw t6, 4(t4)       
    sub t7, t5, t6      
    slti t8, t7, 0       
    mul t9, t8, t7      
    add t10, t5, t9     
    sub t11, t10, t5    
    sub t12, t10, t11   
    sw t11, 0(t4)       
    sw t12, 4(t4)       
    addi t3, t3, -1     
    bge t3, zero, inner_loop 
    addi t2, t2, 1   
    addi t1, t1, -1    
    bgtz t1, outer_loop
    li a7, 10           
