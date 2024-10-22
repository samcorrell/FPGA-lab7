`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:18:49 PM
// Design Name: 
// Module Name: lab7_q3
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


module lab7_q3(
    input x, clk, rst,
    output reg z
    );
    
    parameter s0 = 0, s1=1, s2=2, s3=3;
    reg [1:0] ps,ns;
    
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
                if(x) begin
                    z=0; 
                    ns=s1;
                end
                else begin
                    z=0;
                    ns=s0;
                end
            end
            
            
            s1: begin
                z=0;
                if(x) begin
                    z=0;
                    ns=s2;
                end
                else begin
                    z=0;
                    ns=s0; 
                end
            end
            
            
            s2: begin
                z=0;
                if(x) begin
                    z=0;
                    ns=s2;
                end
                else begin
                    z=0;
                    ns=s3; 
                end
            end     
            
            s3: begin
                z=0;
                if(x) begin
                    z=1;
                    ns=s1;
                end
                else begin
                    z=0;
                    ns=s0;
                end 
            end    
                                
                                       
        endcase    
   end 
    
endmodule
