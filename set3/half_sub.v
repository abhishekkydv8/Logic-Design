module half_sub(d,b,a,c);
input a,c;
output d,b;
xor_gate xor_gate_1(d,a,c);
not_gate not_gate_1(a1,a);
and_gate and_gate_1(b,a1,c);
endmodule
