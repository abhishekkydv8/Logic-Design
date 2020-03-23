module nor_gate(a,b,c);
input b,c;
output a;
wire x,z,y;
nand(x,b,b);
nand(z,c,c);
nand(y,x,z);
nand(a,y,y);
endmodule
