module ALU(out,in0,in1,s0);

output [31:0]out;
input  [31:0]in0,in1;
input s0;
wire [31:0]out1,out2;

adder_32 m1(out1,,in0,in1);
sub_32  m2(out2,,in0,in1,0);

mux mux1[31:0](out,out1,out2,s0);
endmodule

