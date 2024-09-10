.data
a: .word 10
b: .word 20

.text
    la t0, a      
    lw t1, 0(t0)     
    la t2, b     
    lw t3, 0(t2)    
    sw t3, 0(t0)     
    sw t1, 0(t2)     
    li a7, 10      
