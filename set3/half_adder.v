module half_adder(s,c,a,b);
input a,b;
output s,c;
xor_gate xor_gate_1(s,a,b);
and_gate and_gate_1(c,a,b);
endmodule
