module mux2_1_gate(c,a,b,s);
input a,b,s;
output c;
wire x,z,y;
not_gate not_gate_1(x,s);
and_gate and_gate_2(y,a,s);
and_gate and_gate_3(z,b,x);
or_gate or_gate_4(a,y,z);
endmodule
