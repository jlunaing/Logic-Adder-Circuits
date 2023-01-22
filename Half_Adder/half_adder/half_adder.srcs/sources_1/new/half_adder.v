`timescale 1ns / 1ps
/**
  * Engineer: Juan Luna
  *  
  * Create Date: 01/19/2023 05:23:57 PM
  * Design Name: lab01_src
  * Module Name: simTemplate
  * Project Name: 
  * Target Devices: 
  * Tool Versions: 
  * Description: Lab 1: Half-Adder
  * 
  * Dependencies: 
  * 
  * Revision:
  * Revision 0.01 - File Created
  * Additional Comments: 
  */

module half_adder(
    input OP_A,
    input OP_B,
    output SUM, 
    output CO
    );
    
    assign SUM = (~OP_A & OP_B) | (OP_A & ~OP_B);
    assign CO = OP_A & OP_B;
    
endmodule