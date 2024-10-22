`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 01:51:30 PM
// Design Name: 
// Module Name: lab7_q1_tb
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


module lab7_q1_tb;
    reg clk,raw; //inputs
    wire clean; //output
    
    lab7_q1 uut(raw,clk,clean);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        raw = 0;
        #100 raw = 1;
        #200; $stop;
    end
endmodule
