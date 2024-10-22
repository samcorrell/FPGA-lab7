`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:39:44 PM
// Design Name: 
// Module Name: lab7_q2
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


module lab7_q2(
    input x, clk, rst,
    output reg z
    );
    
    parameter s0 = 0, s1=1, s2=2, s3=3, s4=4;
    reg [2:0] ps,ns;
    
    always @(posedge clk or posedge rst) begin
        if(rst)
            ps<=s0;
        else
            ps<=ns;
    end 
    
    always @(*) begin
        case(ps) 
            s0: begin
                z=0;
                if(x)
                    ns=s1;
                else
                    ns=s0;
            end
            
            s1: begin
                z=0;
                if(x)
                    ns=s2;
                else
                    ns=s0; 
            end
            
            s2: begin
                z=0;
                if(x)
                    ns=s2;
                else
                    ns=s3; 
            end     
            
            s3: begin
                z=0;
                if(x)
                    ns=s1;
                else
                    ns=s4; 
            end    
                                
            s4: begin
                z=1;
                if(x)
                    ns=s1;
                else
                    ns=s0; 
            end             
        endcase
    end
endmodule
