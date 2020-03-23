module full_sub(s,x,a,b,c);
input a,b,c;
output s,x;
wire w,y,z;
half_sub half_sub_1(y,z,a,b);
half_sub half_sub_2(s,w,y,c);
or_gate or_gate_1(x,z,w);
endmodule

