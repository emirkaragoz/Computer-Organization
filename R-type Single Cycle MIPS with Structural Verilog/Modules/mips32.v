module mips32(instruction,result);

input [31:0] instruction;
output [31:0] result;

wire write_sig,write_sig_2;																	
wire signed[31:0] rs_content , rt_content, ignore_rs,ignore_rt;																								
wire[4:0] rs , rt ,rd ,shamt; 														
wire[5:0] op,funct; 
wire[2:0] aluSelect;	
wire shiftEnable;
wire [31:0] signExtendShamt, real_rt_content ,real_rs_content,temp_result;			
wire [31:0] sltuPoz,sltuNeg,sltuVal;
wire sltuSignal;							

			// RS
buf (rs[4],instruction[25]);
buf (rs[3],instruction[24]); 
buf (rs[2],instruction[23]); 
buf (rs[1],instruction[22]); 
buf (rs[0],instruction[21]);
			//RT
buf (rt[4],instruction[20]);     
buf (rt[3],instruction[19]);
buf (rt[2],instruction[18]);
buf (rt[1],instruction[17]);
buf (rt[0],instruction[16]); 
         //RD							
buf (rd[4],instruction[15]); 
buf (rd[3],instruction[14]);  
buf (rd[2],instruction[13]);  
buf (rd[1],instruction[12]);  
buf (rd[0],instruction[11]);           							
			//Function Code
buf (funct[0],instruction[0]); 
buf (funct[1],instruction[1]);
buf (funct[2],instruction[2]);
buf (funct[3],instruction[3]);
buf (funct[4],instruction[4]);
buf (funct[5],instruction[5]); 
			//Op Code
buf (op[0],instruction[26]); 
buf (op[1],instruction[27]); 
buf (op[2],instruction[28]); 
buf (op[3],instruction[29]); 
buf (op[4],instruction[30]); 
buf (op[5],instruction[31]);   
			//Shift Amount
buf (shamt[4],instruction[10]);
buf (shamt[3],instruction[9]);
buf (shamt[2],instruction[8]);
buf (shamt[1],instruction[7]);
buf (shamt[0],instruction[6]);										

buf (write_sig,1'b0);	
buf (write_sig_2,1'b1);		

alu_control aluctrl(aluSelect,funct);

//shift enable
not(shiftEnable,funct[5]);

buf (signExtendShamt[0],shamt[0]);
buf (signExtendShamt[1],shamt[1]);
buf (signExtendShamt[2],shamt[2]);
buf (signExtendShamt[3],shamt[3]);
buf (signExtendShamt[4],shamt[4]);
buf (signExtendShamt[5],1'b0);
buf (signExtendShamt[6],1'b0);
buf (signExtendShamt[7],1'b0);
buf (signExtendShamt[8],1'b0);
buf (signExtendShamt[9],1'b0);
buf (signExtendShamt[10],1'b0);
buf (signExtendShamt[11],1'b0);
buf (signExtendShamt[12],1'b0);
buf (signExtendShamt[13],1'b0);
buf (signExtendShamt[14],1'b0);
buf (signExtendShamt[15],1'b0);
buf (signExtendShamt[16],1'b0);
buf (signExtendShamt[17],1'b0);
buf (signExtendShamt[18],1'b0);
buf (signExtendShamt[19],1'b0);
buf (signExtendShamt[20],1'b0);
buf (signExtendShamt[21],1'b0);
buf (signExtendShamt[22],1'b0);
buf (signExtendShamt[23],1'b0);
buf (signExtendShamt[24],1'b0);
buf (signExtendShamt[25],1'b0);
buf (signExtendShamt[26],1'b0);
buf (signExtendShamt[27],1'b0);
buf (signExtendShamt[28],1'b0);
buf (signExtendShamt[29],1'b0);
buf (signExtendShamt[30],1'b0);
buf (signExtendShamt[31],1'b0);

registerBlock read_contents(rs_content,rt_content,result, rs, rt, rd, write_sig,1'b0);

_2_1_32bit_mux select_rt(real_rt_content,rt_content,signExtendShamt,shiftEnable);
_2_1_32bit_mux select_rs(real_rs_content,rs_content,rt_content,shiftEnable);

alu32 alu_process(temp_result,real_rs_content,real_rt_content,aluSelect);


//sltu
and_operator ao(sltuNeg,32'b0,32'b0);
or_operator oo(sltuPoz,32'b0,32'b00000000000000000000000000000001);
_2_1_32bit_mux select_sltuVal(sltuVal,sltuNeg,sltuPoz,temp_result[31]);
_2_1_32bit_mux select_result(result,temp_result,sltuVal,funct[3]);

registerBlock write_contents(ignore_rs,ignore_rt,result, rs, rt, rd, write_sig_2,1'b1);

endmodule
