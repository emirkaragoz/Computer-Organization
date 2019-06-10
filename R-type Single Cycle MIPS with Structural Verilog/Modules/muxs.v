module _2_1mux(R,A,B,S);
input A,B,S;
output R;
wire r1,r2,r3;

not (r1,S);
and (r2,A,r1);
and (r3,B,S);
or (R,r2,r3);

endmodule

module _2_1_32bit_mux(R,A,B,S);
input [31:0] A,B;
input S;
output [31:0] R;
wire [31:0] s1,r1,r2,r3;

or (s1[0], 1'b0, S);
or (s1[1], 1'b0, S);
or (s1[2], 1'b0, S);
or (s1[3], 1'b0, S);
or (s1[4], 1'b0, S);
or (s1[5], 1'b0, S);
or (s1[6], 1'b0, S);
or (s1[7], 1'b0, S);
or (s1[8], 1'b0, S);
or (s1[9], 1'b0, S);
or (s1[10], 1'b0, S);
or (s1[11], 1'b0, S);
or (s1[12], 1'b0, S);
or (s1[13], 1'b0, S);
or (s1[14], 1'b0, S);
or (s1[15], 1'b0, S);
or (s1[16], 1'b0, S);
or (s1[17], 1'b0, S);
or (s1[18], 1'b0, S);
or (s1[19], 1'b0, S);
or (s1[20], 1'b0, S);
or (s1[21], 1'b0, S);
or (s1[22], 1'b0, S);
or (s1[23], 1'b0, S);
or (s1[24], 1'b0, S);
or (s1[25], 1'b0, S);
or (s1[26], 1'b0, S);
or (s1[27], 1'b0, S);
or (s1[28], 1'b0, S);
or (s1[29], 1'b0, S);
or (s1[30], 1'b0, S);
or (s1[31], 1'b0, S);

xor_operator xor1 (r1,32'b11111111111111111111111111111111,s1);
and_operator and1 (r2,A,r1);
and_operator and2 (r3,B,s1);
or_operator or1 (R,r2,r3);

endmodule

module _4_1_32bit_mux(R,A1,A2,A3,A4,S1,S2);
input [31:0] A1,A2,A3,A4;
input S1,S2;
output [31:0] R;
wire [31:0] r1,r2;

_2_1_32bit_mux m1 (r1,A1,A2,S1);
_2_1_32bit_mux m2 (r2,A3,A4,S1);
_2_1_32bit_mux m3 (R,r1,r2,S2);

endmodule

module _8_1_32bit_mux(R,A1,A2,A3,A4,A5,A6,A7,A8,S1,S2,S3);
input [31:0] A1,A2,A3,A4,A5,A6,A7,A8;
input S1,S2,S3;
output [31:0] R;
wire [31:0] r1,r2;

_4_1_32bit_mux m1 (r1,A1,A2,A3,A4,S1,S2);
_4_1_32bit_mux m2 (r2,A5,A6,A7,A8,S1,S2);
_2_1_32bit_mux m3 (R,r1,r2,S3);

endmodule
