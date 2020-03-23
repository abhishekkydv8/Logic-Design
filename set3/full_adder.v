module full_adder(s,x,a,b,c);
input a,b,c;
output s,x;
wire w,y,z;
half_adder half_adder_1(y,z,a,b);
half_adder half_adder_2(s,w,y,c);
or_gate or_gate_1(x,z,w);
endmodule

