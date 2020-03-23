module mux4_1_gate(o,i0,i1,i2,i3,s0,s1);
input i0,i1,i2,i3,s0,s1;
output o;
wire x,z;
mux2_1_gate mux2_1_gate_1(x,i0,i1,s0);
mux2_1_gate mux2_1_gate_2(z,i2,i3,s0);
mux2_1_gate mux2_1_gate_3(o,x,z,s1);
endmodule

