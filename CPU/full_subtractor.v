module full_subtractor(diff,bout,x,y,z);

output diff,bout;
input  x,y,z;
wire d1,b1,b2;

half_subtractor h1(d1,b1,x,y);
half_subtractor h2(diff,b2,d1,z);

or_gate or1(bout,b1,b2);

endmodule



