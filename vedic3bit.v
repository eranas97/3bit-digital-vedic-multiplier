// OWNER@ >> "MOHAMMAD ANAS ANSARI"
// COURSE@ >> "ELECTRONICS AND COMMUNICATION ENGINEERING (2016-2020)"
// COLLEGE@ >> "KIET GROUP OF INSTITUTION (GZB)"
// DURATION@ >> "DURING SUMMER BREAK"
// LANGUAGE USED >> "VERILOG HDL"
// "MULTIPLIER MODULE"
//                                                    "THREE BIT DIGITAL MULTIPLIER BASED ON VEDIC MATHEMATICS ALGORITHMS"

module vedic3bit(A,B,mul);
input [2:0]A,B;
output [5:0]mul;
wire [1:0]temp1,temp3;
wire [2:0]temp2;
wire [4:0]carry;
wire a,b;

//Stage 1(multiplication)
assign mul[0]=(A[0]&B[0]);

//Stage 2(multiplication)
assign temp1[0]=(A[0]&B[1]);
assign temp1[1]=(A[1]&B[0]);

//Stage 3(multiplication)
assign temp2[0]=(A[2]&B[0]);
assign temp2[1]=(A[0]&B[2]);
assign temp2[2]=(A[1]&B[1]);

//Stage 4(multiplication)
assign temp3[0]=(A[2]&B[1]);
assign temp3[1]=(A[1]&B[2]);

//Stage 5(multiplication)
assign a=(A[2]&B[2]);

//Addition of Stages(FINAL ADDITION STAGE)
adder2bit P0(temp1[0],temp1[1],mul[1],carry[0]); //2bit add
adder3bit P1(temp2[0],temp2[1],carry[0],b,carry[1]); // 3bit add
adder3bit P2(temp2[2],b,carry[1],mul[2],carry[2]); //3bit add
adder3bit P3(temp3[0],temp3[1],carry[2],mul[3],carry[3]); //3bit add
adder2bit P4(a,carry[3],mul[4],carry[4]);  //2bit add
assign mul[5]=carry[4];//final sum bit calculation

endmodule