
module demux8_1_gate(o0,o1,o2,o3,o4,o5,o6,o7,i,s0,s1,s2);
input i,s0,s1,s2;
output o0,o1,o2,o3,o4,o5,o6,o7;
wire x,y;
demux2_1_gate demux2_1_gate_3(x,y,i,s2);
demux2_1_gate demux2_1_gate_1(o0,o1,o2,o3,x,s0,s1);
demux2_1_gate demux2_1_gate_2(o4,o5,o6,o7,y,s0,s1);
endmodule
