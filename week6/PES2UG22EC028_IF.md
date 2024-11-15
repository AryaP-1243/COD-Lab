module instruction_fetch (
    input logic clk,                 
    input logic reset,               
    output logic [31:0] pc_out,       
    output logic [31:0] instr         
);
    logic [31:0] pc;
    logic [7:0] instruction_memory [0:1023]; 
    assign pc_out = pc;
    assign instr = {instruction_memory[pc + 3], 
                    instruction_memory[pc + 2], 
                    instruction_memory[pc + 1], 
                    instruction_memory[pc]};
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 32'b0;
        end else begin
            pc <= pc + 32'd4;
        end
    end
    initial begin
        instruction_memory[0]  = 8'h13; // Example: ADDI
        instruction_memory[1]  = 8'h00;
        instruction_memory[2]  = 8'h00;
        instruction_memory[3]  = 8'h00;
      end
endmodule
