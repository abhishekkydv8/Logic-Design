module and_gate(a,b,c);
input b,c;
output a;
wire x;
nand(x,b,c);
nand(a,x,x);
endmodule
