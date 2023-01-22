`timescale 1ns / 1ps
/**
  * Engineer: Juan Luna
  *  
  * Create Date: 09/24/2018 08:37:20 AM
  * Design Name: 
  * Module Name: simTemplate
  * Project Name: 
  * Target Devices: 
  * Tool Versions: 
  * Description: 
  * 
  * Dependencies: 
  * 
  * Revision:
  * Revision 0.01 - File Created
  * Additional Comments: 
  */

module sim_template();
     
    // Modified default reg and wire types to logic.
    logic  a, b;
    logic out, cout;
      
    // Device under test (DUT) must have a name matching that of the
    // module in the design source file
    half_adder DUT (
        .OP_A(a),
        .OP_B(b),
        .SUM(out),
        .CO(cout)
        );
    // Each initial block starts at time 0, in parallel.
    initial begin
        // size = 1-bit, number = 0
        a = 1'b0;
        b = 1'b0;
        // Delay advances time by 20-ns
        #20
        a = 1'b0;
        b = 1'b1;
        #20
        a = 1'b1;
        b = 1'b0;
        #20
        a = 1'b1;
        b = 1'b1;
        #20
        // Verilog system task that tells simulator to terminate
        // current simulation
        $finish;
    end
endmodule