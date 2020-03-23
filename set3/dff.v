module dff(q,q0,d,c);
input d,c;
output q,q0;
wire d0;
nand(d0,d,d);
gated_srl gated_srl_1(q,q0,d,d0,c);
endmodule

