module alu_control(select_bits_ALU, function_code);

input [5:0] function_code;
output [2:0] select_bits_ALU;
wire temp,temp1,temp2,temp3;	

// alu select[2]
not (temp,function_code[5]);
or (select_bits_ALU[2],temp,function_code[1]);	

//alu select[1]
xor (temp1,function_code[1],function_code[2]);
not (select_bits_ALU[1],temp1);

//alu select[0]
and (temp2,function_code[0],function_code[2]);
and (temp3,temp,function_code[1]);
or (select_bits_ALU[0],temp2,temp3);

endmodule