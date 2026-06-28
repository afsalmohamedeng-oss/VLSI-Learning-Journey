`timescale 1ns/1ps

module logic_gates_tb;

reg a, b;
wire y_and, y_or, y_not, y_xor, y_nand, y_nor;

logic_gates dut (
    .a(a),
    .b(b),
    .y_and(y_and),
    .y_or(y_or),
    .y_not(y_not),
    .y_xor(y_xor),
    .y_nand(y_nand),
    .y_nor(y_nor)
);

initial begin
    $dumpfile("logic_gates.vcd");
    $dumpvars(0, logic_gates_tb);
    
    $display("Time | a | b | AND | NAND | NOR | NOT | OR | XOR");
    $display("--------------------------------------------------");
    
    a = 0; b = 0; #10;
    $display("%4t | %b | %b |  %b  |  %b   |  %b  |  %b  | %b |  %b", 
             $time, a, b, y_and, y_nand, y_nor, y_not, y_or, y_xor);
    
    a = 0; b = 1; #10;
    $display("%4t | %b | %b |  %b  |  %b   |  %b  |  %b  | %b |  %b", 
             $time, a, b, y_and, y_nand, y_nor, y_not, y_or, y_xor);
    
    a = 1; b = 0; #10;
    $display("%4t | %b | %b |  %b  |  %b   |  %b  |  %b  | %b |  %b", 
             $time, a, b, y_and, y_nand, y_nor, y_not, y_or, y_xor);
    
    a = 1; b = 1; #10;
    $display("%4t | %b | %b |  %b  |  %b   |  %b  |  %b  | %b |  %b", 
             $time, a, b, y_and, y_nand, y_nor, y_not, y_or, y_xor);
    
    $finish;
end

endmodule