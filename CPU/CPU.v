module CPU(out,instruction,address,reset,a,b);

output [31:0]out;
reg    [31:0]out;
input [31:0]instruction,a,b;
input [2:0]address;
input reset;

reg [31:0]x,y;            // The values on which operation is to be performed
reg [15:0]instruction_reg;            
reg [2:0]tmp;
reg [31:0]tmp1;
reg reset_pc,clk0,clk1,clk2,write0,write1,s0,s1,inc;  // The selection lines to the ALU
reg [31:0]in;             // Will load the instruction in RAM8 using in
wire [31:0]out_ram,out_pc,out_alu;

PC   pc1(out_pc,tmp1,clk1,write1,inc,reset_pc);               // initially reset will be passed as 1 and then 0              
ram8 instruction_ram(out_ram,in,1'b1,clk0,write0,tmp);
ALU  calc(out_alu,x,y,s0);

always@(*)
begin
  
  in=instruction; write0=1; tmp=address; clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0; #2;//The instruction is written to ram(the operation to be performes)
 // in=a;           write0=1;  tmp=3'b101;  clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0; #2;
 // in=b;           write0=1;  tmp=3'b110;  clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0; #2;
  
  //Now updating the PC
  inc=0; reset_pc=reset;  clk1=0; #2; clk1=1; #2; clk1=0; #2; clk1=1; #2; inc=1;
  
  // FETCH
  //Now fetch instruction from RAM  we know the address from pc  
  tmp[2]=out_pc[2];
  tmp[1]=out_pc[1];
  tmp[0]=out_pc[0];
  
  write0=0; clk0=0; #2; clk0=1; #2; clk0=0;  #2; clk0=1; #2;
  instruction_reg[15]=out_ram[15];          // Instruction is put into instruction register
  instruction_reg[14]=out_ram[14];
  instruction_reg[13]=out_ram[13];
  instruction_reg[12]=out_ram[12];
  instruction_reg[11]=out_ram[11];
  instruction_reg[10]=out_ram[10];
  instruction_reg[9]=out_ram[9];
  instruction_reg[8]=out_ram[8];
  instruction_reg[7]=out_ram[7];
  instruction_reg[6]=out_ram[6];
  instruction_reg[5]=out_ram[5];
  instruction_reg[4]=out_ram[4];
  instruction_reg[3]=out_ram[3];
  instruction_reg[2]=out_ram[2];
  instruction_reg[1]=out_ram[1];
  instruction_reg[0]=out_ram[0];       
  // DECODE
 
  s0=instruction_reg[12];
  
  tmp[2]=instruction_reg[6];
  tmp[1]=instruction_reg[5];
  tmp[0]=instruction_reg[4];            // to store 1st operand into a register by reading from ram
  in=a;      write0=1;   clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0; #2;
   
  write0=0;  clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2;
  x=out_ram;

  tmp[2]=instruction_reg[2];
  tmp[1]=instruction_reg[1];
  tmp[0]=instruction_reg[0];            // to store 2nd operand into a register by reading from ram
  in=b;     write0=1;    clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0; #2;
  
  write0=1;  clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2; write0=0;
  y=out_ram; #2;
  
  // Now we need to write the output of ALU to ram
  in=out_alu;
  tmp[2]=instruction_reg[10];
  tmp[1]=instruction_reg[9];
  tmp[0]=instruction_reg[8];
  
  write0=1; clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2;  // The output of alu is written into ram location
  write0=0; clk0=0; #2; clk0=1; #2; clk0=0; #2; clk0=1; #2;
  out=out_ram;  #10;
  write1=0; reset_pc=0; clk1=0; #2; clk1=1; #2; clk1=0; #2; 
   

end
endmodule

