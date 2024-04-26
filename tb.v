`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2022 05:17:24 PM
// Design Name: 
// Module Name: tb
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


module tb;
reg [2:0]i;
reg rst,choice,clk;
wire out;
wire [2:0]ret;

VendingMachine VM(out,ret,i,choice,rst,clk);
always #5 clk=~clk;

    initial 
    begin
        clk=0;  rst=1'b1;
        #7 rst=0; 
        #7 i=3'b100; choice=1'b1;
        #7 i=3'b001;
        #7 choice=1'b0;
        #7 i=3'b010;
        #7 i=3'b100;
        #7 i=3'b001;
        #7 choice=1'b1;
    end
endmodule
