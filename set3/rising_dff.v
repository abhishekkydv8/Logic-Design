
module rising_dff(q,q0,d,c);
input d,c;
output q,q0;
wire c0,x,x0;
nand(c0,c,c);
dff dff_1(x,x0,d,c0);
dff dff_2(q,q0,x,c);
endmodule
