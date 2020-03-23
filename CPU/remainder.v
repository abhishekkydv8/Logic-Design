module remainder(out,x,y);

output [15:0]out;
input  [15:0]x,y;
reg [15:0]out;
reg [15:0]a;

always@(x,y)
begin
 a=x;
  while(a>=y)
  begin
  a=a-y;
  out=a;
  end
end
endmodule 