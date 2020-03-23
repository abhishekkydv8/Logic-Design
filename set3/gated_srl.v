module gated_srl(q,q0,s,r,e);
input s,r,e;
output q,q0;
wire x,y;
nand(x,s,e);
nand(y,r,e);
nand(q,q0,x);
nand(q0,q,y);
endmodule

