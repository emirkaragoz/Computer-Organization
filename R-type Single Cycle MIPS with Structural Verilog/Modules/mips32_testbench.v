module mips_testbench ();

reg [31:0] instruction_set;
wire[31:0] result;

initial begin
instruction_set = 32'b00000000010000110101000000100100; #10; // r10 = r2 and r3
instruction_set = 32'b00000000010000110101100000100111; #10; // r11 = r2 nor r3
instruction_set = 32'b00000000010000110110000000100101; #10; // r12 = r2 or r3
instruction_set = 32'b00000000100001010110100000100000; #10; // r13 = r4 add r5
instruction_set = 32'b00000000100001010111000000100001; #10; // r14 = r4 addu r5
instruction_set = 32'b00000000101001000111100000100010; #10; // r15 = r5 sub r4
instruction_set = 32'b00000000101001001000000000100011; #10; // r16 = r5 subu r4
instruction_set = 32'b00000000100001011000100000101011; #10; // r17 = r4 sltu r5
instruction_set = 32'b00000000110001111001000010000010; #10; // r18 = r7 >> r2
instruction_set = 32'b00000000110001111001100010000000; #10; // r19 = r7 << r2
end

mips32 run_instruction(instruction_set , result);

initial
begin
$monitor("time = %2d, instruction =%32b, result=%32b", $time, instruction_set, result);
end

endmodule