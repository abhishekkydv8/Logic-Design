module adder_32(s,c,x,y);

output [31:0]s;
input [31:0]x,y;
output c;

wire q,w,e,r,t,p,f,g,h,j,k,u,i,o,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16;

full_adder f1(s[0],q,x[0],y[0],1'b0);
full_adder f2(s[1],w,x[1],y[1],q);
full_adder f3(s[2],r,x[2],y[2],w);
full_adder f4(s[3],t,x[3],y[3],r);

full_adder f5(s[4],v,x[4],y[4],t);
full_adder f6(s[5],u,x[5],y[5],v);
full_adder f7(s[6],i,x[6],y[6],u);
full_adder f8(s[7],o,x[7],y[7],i);

full_adder f9(s[8],p,x[8],y[8],o);
full_adder f10(s[9],f,x[9],y[9],p);
full_adder f11(s[10],g,x[10],y[10],f);
full_adder f12(s[11],h,x[11],y[11],g);

full_adder f13(s[12],j,x[12],y[12],h);
full_adder f14(s[13],k,x[13],y[13],j);
full_adder f15(s[14],l,x[14],y[14],k);
full_adder f16(s[15],a1,x[15],y[15],l);

full_adder f17(s[16],a2,x[16],y[16],a1);
full_adder f18(s[17],a3,x[17],y[17],a2);
full_adder f19(s[18],a4,x[18],y[18],a3);
full_adder f20(s[19],a5,x[19],y[19],a4);

full_adder f21(s[20],a6,x[20],y[20],a5);
full_adder f22(s[21],a7,x[21],y[21],a6);
full_adder f23(s[22],a8,x[22],y[22],a7);
full_adder f24(s[23],a9,x[23],y[23],a8);

full_adder f25(s[24],a10,x[24],y[24],a9);
full_adder f26(s[25],a11,x[25],y[25],a10);
full_adder f27(s[26],a12,x[26],y[26],a11);
full_adder f28(s[27],a13,x[27],y[27],a12);

full_adder f29(s[28],a14,x[28],y[28],a13);
full_adder f30(s[29],a15,x[29],y[29],a14);
full_adder f31(s[30],a16,x[30],y[30],a15);
full_adder f32(s[31],c,x[31],y[31],a16);

endmodule
