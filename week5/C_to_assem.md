    .data
a:  .hword 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 
b:  .hword 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 
c:  .hword 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 

    .text
main:
    la t0, a              
    la t1, b              
    la t2, c              
    li t3, 0              

loop:
    li t4, 10             
    bge t3, t4, end       
    lh t5, 0(t0)          
    lh t6, 0(t1)          
    mul t7, t5, t6        
    beqz t3, no_prev      
    lh t8, -2(t2)         
    add t7, t7, t8        

no_prev:
    sh t7, 0(t2)         
    addi t0, t0, 2        
    addi t1, t1, 2        
    addi t2, t2, 2        
    addi t3, t3, 1        
    j loop                

end:
    nop                   
