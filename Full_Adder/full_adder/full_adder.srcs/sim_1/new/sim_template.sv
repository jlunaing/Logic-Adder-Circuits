`timescale 1ns / 1ps
/**
  * Engineer: Juan Luna
  *  
  * Create Date: 2023-01-19
  * Design Name: Full Adder Circuit Simulation
  * Module Name: sim_template
  * Project Name: Project 1
  * Target Devices: Basys 3 board
  * Tool Versions: 
  * Description: 
  *     A 3-bit adder, 2 bits associated with addition operation
  *     and a third bit as a "carry-in" bit. The outputs are a sum
  *     and a "carry-out" bit. SOP and POS forms for the outputs
  *     are included, proving functional equivalence.
  * 
  * Dependencies: N/A
  * 
  * Revision: 1
  * Revision 0.01 - File Created
  * Additional Comments: N/A
  */

module sim_template();
     
    // Modified default reg and wire types to logic.
    logic a, b, cin;
    logic sum_sop, sum_pos, co_sop, co_pos;
      
    // Device under test (DUT) must have a name matching that of the
    // module in the design source file
    full_adder DUT (
        .OP_A(a),
        .OP_B(b),
        .Cin(cin),
        .SUM_SOP(sum_sop),
        .SUM_POS(sum_pos),
        .CO_SOP(co_sop),
        .CO_POS(co_pos)
        );
    // Each initial block starts at time 0, in parallel.
    initial begin
        // var = <bit-size>'b<num>
        a = 1'b0; b = 1'b0; cin = 1'b0;
        // Delay advances time by 15-ns
        #15
        a = 1'b0; b = 1'b0; cin = 1'b1;
        #15
        a = 1'b0; b = 1'b1; cin = 1'b0;
        #15
        a = 1'b0; b = 1'b1; cin = 1'b1;
        #15
        a = 1'b1; b = 1'b0; cin = 1'b0;
        #15
        a = 1'b1; b = 1'b0; cin = 1'b1;
        #15
        a = 1'b1; b = 1'b1; cin = 1'b0;
        #15
        a = 1'b1; b = 1'b1; cin = 1'b1;
        #15
        // Verilog system task that tells simulator to terminate
        // current simulation
        $finish;
    end
endmodule