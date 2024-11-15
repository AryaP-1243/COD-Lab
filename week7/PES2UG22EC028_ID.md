For Top-Module:
module instr_decode (
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] instruction,    
    input  logic [31:0] write_data,     
    input  logic [4:0]  write_reg,      
    input  logic        reg_write,      
    output logic [31:0] read_data1,     
    output logic [31:0] read_data2,     
    output logic [31:0] sign_ext_imm    
);
    logic [4:0] read_reg1, read_reg2;
    logic [15:0] imm_in;
  register_file rf (
        .clk(clk),
        .rst(rst),
        .read_reg1(instruction[25:21]), 
        .read_reg2(instruction[20:16]),  
        .write_reg(write_reg),           
        .write_data(write_data),         
        .reg_write(reg_write),           
        .read_data1(read_data1),        
        .read_data2(read_data2)          
    );
    sign_extend se (
        .imm_in(instruction[15:0]),      
        .imm_out(sign_ext_imm)           
    );
endmodule
