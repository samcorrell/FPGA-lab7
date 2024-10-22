`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:28:33 PM
// Design Name: 
// Module Name: lab7_q3_tb
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


module lab7_q3_tb;
reg clk,x,rst; //inputs
wire z; //outputs

lab7_q3 uut(x,clk,rst,z);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    #10 rst = 1;
    #10 rst = 0;
    #10 x = 1; #10 x=1; #10 x=0; #10 x=1;
    #10 x = 1; #10 x=0; #10 x=1; 
    #10 x = 1; #10 x=0; #10 x=0; #10 x=1;
    #20 $stop;
        
end

endmodule
