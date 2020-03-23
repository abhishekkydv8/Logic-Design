module demux1_2_gate(a,b,c,s);
input c,s;
output a,b;
wire x;
not_gate not_gate_1(x,s);
and_gate and_gate_2(a,c,s);
and_gate and_gate_3(b,c,x);
endmodule
 