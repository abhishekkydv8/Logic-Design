module full_adder(s,c,x,y,z);

output s,c;
input x,y,z;
wire c1,c2,s1;

half_adder h1(s1,c1,x,y);
half_adder h2(s,c2,s1,z);

or_gate or1(c,c1,c2);

endmodule
