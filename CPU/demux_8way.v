module demux_8way(out0,out1,out2,out3,out4,out5,out6,out7,in,s0,s1,s2);

input in,s0,s1,s2;
output out0,out1,out2,out3,out4,out5,out6,out7;
wire a,b;

demux demux1(a,b,in,s2);

demux_4way demux2(out0,out1,out2,out3,a,s0,s1);
demux_4way demux3(out4,out5,out6,out7,b,s0,s1);

endmodule


