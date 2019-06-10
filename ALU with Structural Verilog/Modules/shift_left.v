module shift_left(R,A,B);

input [31:0] A,B;
output [31:0] R;

wire [31:0] s1,s2,s3,s4;

_2_1mux lwl1_1 (s1[0],A[0],1'b0,B[0]);
_2_1mux lwl1_2 (s1[1],A[1],A[0],B[0]);
_2_1mux lwl1_3 (s1[2],A[2],A[1],B[0]);
_2_1mux lwl1_4 (s1[3],A[3],A[2],B[0]);
_2_1mux lwl1_5 (s1[4],A[4],A[3],B[0]);
_2_1mux lwl1_6 (s1[5],A[5],A[4],B[0]);
_2_1mux lwl1_7 (s1[6],A[6],A[5],B[0]);
_2_1mux lwl1_8 (s1[7],A[7],A[6],B[0]);
_2_1mux lwl1_9 (s1[8],A[8],A[7],B[0]);
_2_1mux lwl1_10 (s1[9],A[9],A[8],B[0]);
_2_1mux lwl1_11 (s1[10],A[10],A[9],B[0]);
_2_1mux lwl1_12 (s1[11],A[11],A[10],B[0]);
_2_1mux lwl1_13 (s1[12],A[12],A[11],B[0]);
_2_1mux lwl1_14 (s1[13],A[13],A[12],B[0]);
_2_1mux lwl1_15 (s1[14],A[14],A[13],B[0]);
_2_1mux lwl1_16 (s1[15],A[15],A[14],B[0]);
_2_1mux lwl1_17 (s1[16],A[16],A[15],B[0]);
_2_1mux lwl1_18 (s1[17],A[17],A[16],B[0]);
_2_1mux lwl1_19 (s1[18],A[18],A[17],B[0]);
_2_1mux lwl1_20 (s1[19],A[19],A[18],B[0]);
_2_1mux lwl1_21 (s1[20],A[20],A[19],B[0]);
_2_1mux lwl1_22 (s1[21],A[21],A[20],B[0]);
_2_1mux lwl1_23 (s1[22],A[22],A[21],B[0]);
_2_1mux lwl1_24 (s1[23],A[23],A[22],B[0]);
_2_1mux lwl1_25 (s1[24],A[24],A[23],B[0]);
_2_1mux lwl1_26 (s1[25],A[25],A[24],B[0]);
_2_1mux lwl1_27 (s1[26],A[26],A[25],B[0]);
_2_1mux lwl1_28 (s1[27],A[27],A[26],B[0]);
_2_1mux lwl1_29 (s1[28],A[28],A[27],B[0]);
_2_1mux lwl1_30 (s1[29],A[29],A[28],B[0]);
_2_1mux lwl1_31 (s1[30],A[30],A[29],B[0]);
_2_1mux lwl1_32 (s1[31],A[31],A[30],B[0]);

_2_1mux lwl2_1 (s2[0],s1[0],1'b0,B[1]);
_2_1mux lwl2_2 (s2[1],s1[1],1'b0,B[1]);
_2_1mux lwl2_3 (s2[2],s1[2],s1[0],B[1]);
_2_1mux lwl2_4 (s2[3],s1[3],s1[1],B[1]);
_2_1mux lwl2_5 (s2[4],s1[4],s1[2],B[1]);
_2_1mux lwl2_6 (s2[5],s1[5],s1[3],B[1]);
_2_1mux lwl2_7 (s2[6],s1[6],s1[4],B[1]);
_2_1mux lwl2_8 (s2[7],s1[7],s1[5],B[1]);
_2_1mux lwl2_9 (s2[8],s1[8],s1[6],B[1]);
_2_1mux lwl2_10 (s2[9],s1[9],s1[7],B[1]);
_2_1mux lwl2_11 (s2[10],s1[10],s1[8],B[1]);
_2_1mux lwl2_12 (s2[11],s1[11],s1[9],B[1]);
_2_1mux lwl2_13 (s2[12],s1[12],s1[10],B[1]);
_2_1mux lwl2_14 (s2[13],s1[13],s1[11],B[1]);
_2_1mux lwl2_15 (s2[14],s1[14],s1[12],B[1]);
_2_1mux lwl2_16 (s2[15],s1[15],s1[13],B[1]);
_2_1mux lwl2_17 (s2[16],s1[16],s1[14],B[1]);
_2_1mux lwl2_18 (s2[17],s1[17],s1[15],B[1]);
_2_1mux lwl2_19 (s2[18],s1[18],s1[16],B[1]);
_2_1mux lwl2_20 (s2[19],s1[19],s1[17],B[1]);
_2_1mux lwl2_21 (s2[20],s1[20],s1[18],B[1]);
_2_1mux lwl2_22 (s2[21],s1[21],s1[19],B[1]);
_2_1mux lwl2_23 (s2[22],s1[22],s1[20],B[1]);
_2_1mux lwl2_24 (s2[23],s1[23],s1[21],B[1]);
_2_1mux lwl2_25 (s2[24],s1[24],s1[22],B[1]);
_2_1mux lwl2_26 (s2[25],s1[25],s1[23],B[1]);
_2_1mux lwl2_27 (s2[26],s1[26],s1[24],B[1]);
_2_1mux lwl2_28 (s2[27],s1[27],s1[25],B[1]);
_2_1mux lwl2_29 (s2[28],s1[28],s1[26],B[1]);
_2_1mux lwl2_30 (s2[29],s1[29],s1[27],B[1]);
_2_1mux lwl2_31 (s2[30],s1[30],s1[28],B[1]);
_2_1mux lwl2_32 (s2[31],s1[31],s1[29],B[1]);

_2_1mux lwl3_1 (s3[0],s2[0],1'b0,B[2]);
_2_1mux lwl3_2 (s3[1],s2[1],1'b0,B[2]);
_2_1mux lwl3_3 (s3[2],s2[2],1'b0,B[2]);
_2_1mux lwl3_4 (s3[3],s2[3],1'b0,B[2]);
_2_1mux lwl3_5 (s3[4],s2[4],s2[0],B[2]);
_2_1mux lwl3_6 (s3[5],s2[5],s2[1],B[2]);
_2_1mux lwl3_7 (s3[6],s2[6],s2[2],B[2]);
_2_1mux lwl3_8 (s3[7],s2[7],s2[3],B[2]);
_2_1mux lwl3_9 (s3[8],s2[8],s2[4],B[2]);
_2_1mux lwl3_10 (s3[9],s2[9],s2[5],B[2]);
_2_1mux lwl3_11 (s3[10],s2[10],s2[6],B[2]);
_2_1mux lwl3_12 (s3[11],s2[11],s2[7],B[2]);
_2_1mux lwl3_13 (s3[12],s2[12],s2[8],B[2]);
_2_1mux lwl3_14 (s3[13],s2[13],s2[9],B[2]);
_2_1mux lwl3_15 (s3[14],s2[14],s2[10],B[2]);
_2_1mux lwl3_16 (s3[15],s2[15],s2[11],B[2]);
_2_1mux lwl3_17 (s3[16],s2[16],s2[12],B[2]);
_2_1mux lwl3_18 (s3[17],s2[17],s2[13],B[2]);
_2_1mux lwl3_19 (s3[18],s2[18],s2[14],B[2]);
_2_1mux lwl3_20 (s3[19],s2[19],s2[15],B[2]);
_2_1mux lwl3_21 (s3[20],s2[20],s2[16],B[2]);
_2_1mux lwl3_22 (s3[21],s2[21],s2[17],B[2]);
_2_1mux lwl3_23 (s3[22],s2[22],s2[18],B[2]);
_2_1mux lwl3_24 (s3[23],s2[23],s2[19],B[2]);
_2_1mux lwl3_25 (s3[24],s2[24],s2[20],B[2]);
_2_1mux lwl3_26 (s3[25],s2[25],s2[21],B[2]);
_2_1mux lwl3_27 (s3[26],s2[26],s2[22],B[2]);
_2_1mux lwl3_28 (s3[27],s2[27],s2[23],B[2]);
_2_1mux lwl3_29 (s3[28],s2[28],s2[24],B[2]);
_2_1mux lwl3_30 (s3[29],s2[29],s2[25],B[2]);
_2_1mux lwl3_31 (s3[30],s2[30],s2[26],B[2]);
_2_1mux lwl3_32 (s3[31],s2[31],s2[27],B[2]);

_2_1mux lwl4_1 (s4[0],s3[0],1'b0,B[3]);
_2_1mux lwl4_2 (s4[1],s3[1],1'b0,B[3]);
_2_1mux lwl4_3 (s4[2],s3[2],1'b0,B[3]);
_2_1mux lwl4_4 (s4[3],s3[3],1'b0,B[3]);
_2_1mux lwl4_5 (s4[4],s3[4],1'b0,B[3]);
_2_1mux lwl4_6 (s4[5],s3[5],1'b0,B[3]);
_2_1mux lwl4_7 (s4[6],s3[6],1'b0,B[3]);
_2_1mux lwl4_8 (s4[7],s3[7],1'b0,B[3]);
_2_1mux lwl4_9 (s4[8],s3[8],s3[0],B[3]);
_2_1mux lwl4_10 (s4[9],s3[9],s3[1],B[3]);
_2_1mux lwl4_11 (s4[10],s3[10],s3[2],B[3]);
_2_1mux lwl4_12 (s4[11],s3[11],s3[3],B[3]);
_2_1mux lwl4_13 (s4[12],s3[12],s3[4],B[3]);
_2_1mux lwl4_14 (s4[13],s3[13],s3[5],B[3]);
_2_1mux lwl4_15 (s4[14],s3[14],s3[6],B[3]);
_2_1mux lwl4_16 (s4[15],s3[15],s3[7],B[3]);
_2_1mux lwl4_17 (s4[16],s3[16],s3[8],B[3]);
_2_1mux lwl4_18 (s4[17],s3[17],s3[9],B[3]);
_2_1mux lwl4_19 (s4[18],s3[18],s3[10],B[3]);
_2_1mux lwl4_20 (s4[19],s3[19],s3[11],B[3]);
_2_1mux lwl4_21 (s4[20],s3[20],s3[12],B[3]);
_2_1mux lwl4_22 (s4[21],s3[21],s3[13],B[3]);
_2_1mux lwl4_23 (s4[22],s3[22],s3[14],B[3]);
_2_1mux lwl4_24 (s4[23],s3[23],s3[15],B[3]);
_2_1mux lwl4_25 (s4[24],s3[24],s3[16],B[3]);
_2_1mux lwl4_26 (s4[25],s3[25],s3[17],B[3]);
_2_1mux lwl4_27 (s4[26],s3[26],s3[18],B[3]);
_2_1mux lwl4_28 (s4[27],s3[27],s3[19],B[3]);
_2_1mux lwl4_29 (s4[28],s3[28],s3[20],B[3]);
_2_1mux lwl4_30 (s4[29],s3[29],s3[21],B[3]);
_2_1mux lwl4_31 (s4[30],s3[30],s3[22],B[3]);
_2_1mux lwl4_32 (s4[31],s3[31],s3[23],B[3]);

_2_1mux lwl5_1 (R[0],s4[0],1'b0,B[4]);
_2_1mux lwl5_2 (R[1],s4[1],1'b0,B[4]);
_2_1mux lwl5_3 (R[2],s4[2],1'b0,B[4]);
_2_1mux lwl5_4 (R[3],s4[3],1'b0,B[4]);
_2_1mux lwl5_5 (R[4],s4[4],1'b0,B[4]);
_2_1mux lwl5_6 (R[5],s4[5],1'b0,B[4]);
_2_1mux lwl5_7 (R[6],s4[6],1'b0,B[4]);
_2_1mux lwl5_8 (R[7],s4[7],1'b0,B[4]);
_2_1mux lwl5_9 (R[8],s4[8],1'b0,B[4]);
_2_1mux lwl5_10 (R[9],s4[9],1'b0,B[4]);
_2_1mux lwl5_11 (R[10],s4[10],1'b0,B[4]);
_2_1mux lwl5_12 (R[11],s4[11],1'b0,B[4]);
_2_1mux lwl5_13 (R[12],s4[12],1'b0,B[4]);
_2_1mux lwl5_14 (R[13],s4[13],1'b0,B[4]);
_2_1mux lwl5_15 (R[14],s4[14],1'b0,B[4]);
_2_1mux lwl5_16 (R[15],s4[15],1'b0,B[4]);
_2_1mux lwl5_17 (R[16],s4[16],s4[0],B[4]);
_2_1mux lwl5_18 (R[17],s4[17],s4[1],B[4]);
_2_1mux lwl5_19 (R[18],s4[18],s4[2],B[4]);
_2_1mux lwl5_20 (R[19],s4[19],s4[3],B[4]);
_2_1mux lwl5_21 (R[20],s4[20],s4[4],B[4]);
_2_1mux lwl5_22 (R[21],s4[21],s4[5],B[4]);
_2_1mux lwl5_23 (R[22],s4[22],s4[6],B[4]);
_2_1mux lwl5_24 (R[23],s4[23],s4[7],B[4]);
_2_1mux lwl5_25 (R[24],s4[24],s4[8],B[4]);
_2_1mux lwl5_26 (R[25],s4[25],s4[9],B[4]);
_2_1mux lwl5_27 (R[26],s4[26],s4[10],B[4]);
_2_1mux lwl5_28 (R[27],s4[27],s4[11],B[4]);
_2_1mux lwl5_29 (R[28],s4[28],s4[12],B[4]);
_2_1mux lwl5_30 (R[29],s4[29],s4[13],B[4]);
_2_1mux lwl5_31 (R[30],s4[30],s4[14],B[4]);
_2_1mux lwl5_32 (R[31],s4[31],s4[15],B[4]);

endmodule



