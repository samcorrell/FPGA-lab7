`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 01:42:42 PM
// Design Name: 
// Module Name: lab7_q1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab7_q1(
    input raw, clk,
    output reg clean
    );
    reg [2:0] count = 0;
    reg raw_prev;
    
    initial
        raw_prev=raw;
        
    always @(posedge clk) begin
        if(raw_prev==raw) begin
            if(&count)
                clean <= raw;
            else
                count<=count+1;
        end
        else begin
            count<=0;
            raw_prev<=raw;
        end
    end
endmodule
