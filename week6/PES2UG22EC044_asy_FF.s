module async_reset_flipflop (
    input wire clk,       
    input wire reset,     
    input wire d,         
    output reg q          
);
  always @(posedge clk or posedge reset) begin
        if (reset)      
            q <= 0;     
        else
            q <= d;     
    end
    endmodule