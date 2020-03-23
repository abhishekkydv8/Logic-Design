module PC(out,in,clk,write,inc,reset);

output [31:0]out;
input [31:0]in;
input clk,write,inc,reset;

wire [31:0]incremented_out;
wire [31:0]in0,in1,in2;
wire load1,x;

or(x,reset,inc);
or(load1,x,write);

adder_32 add1(incremented_out,,out,32'b00000000000000000000000000000001);

mux_32bit mux1(in0,out,incremented_out,inc);
mux_32bit mux2(in1,in0,in,write);
mux_32bit mux3(in2,in1,32'b00000000000000000000000000000000,reset);

reg_32bit reg1(out,in2,1'b1,clk,load1);
endmodule
