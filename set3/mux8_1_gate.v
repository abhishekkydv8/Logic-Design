module mux8_1_gate(o,i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output o;
wire x,z;
mux4_1_gate mux4_1_gate_1(x,i0,i1,i2,i3,s0,s1);
mux4_1_gate mux4_1_gate_2(z,i4,i5,i6,i7,s0,s1);
mux2_1_gate mux2_1_gate_1(o,x,z,s1);
endmodule

