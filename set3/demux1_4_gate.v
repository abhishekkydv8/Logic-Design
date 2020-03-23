module demux4_1_gate(o0,o1,o2,o3,i,s0,s1);
input i,s0,s1;
output o0,o1,o2,o3;
wire x,y;
demux2_1_gate demux2_1_gate_3(x,z,i,s1);
demux2_1_gate demux2_1_gate_1(o0,o1,x,s0);
demux2_1_gate demux2_1_gate_2(o2,o3,y,s0);
endmodule

