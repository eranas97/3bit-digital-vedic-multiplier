// OWNER@ >> "MOHAMMAD ANAS ANSARI"
// COURSE@ >> "ELECTRONICS AND COMMUNICATION ENGINEERING (2016-2020)"
// COLLEGE@ >> "KIET GROUP OF INSTITUTION (GZB)"
// DURATION@ >> "DURING SUMMER BREAK"
// LANGUAGE USED >> "VERILOG HDL"
// "MULTIPLIER TESTBENCH MODULE"
//                                                    "THREE BIT DIGITAL MULTIPLIER BASED ON VEDIC MATHEMATICS ALGORITHM"
//                                                                               "TESTBENCH"
`timescale 10ns/1ns //timescale defined 
module tb_vedic3bit;
reg [2:0]A,B; //ports declared
wire [5:0]mul;

vedic3bit M(A,B,mul);// module instantiation

initial //various test inputs
begin
    A=3'b001;
    B=3'b010;

    #1 A=3'b010;
       B=3'b100;

    #1A=3'b100;
      B=3'b101;

    #1 A=3'b101;
       B=3'b110;

    #1A=3'b110;
      B=3'b111;
end

endmodule