module or_gate(a,b,c);
input b,c;
output a;
wire x,z;
nand(x,b,b);
nand(z,c,c);
nand(a,x,z);
endmodule
