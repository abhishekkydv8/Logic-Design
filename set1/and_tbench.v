module and_tb;

wire c;
reg a,b;

and_gate and1(c,a,b);

initial 
begin

a=0; b=0;
#30 a=0;b=1;
#30 a=1;b=0;
#30 a=1; b=1;
end

endmodule
