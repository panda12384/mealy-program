module mealy_1011(x,clk,reset,z);
input x,clk,reset;
output reg z;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
reg[0:1]PS,NS;

always@(posedge clk or posedge reset)
begin
if(reset)
PS <= S0;
else
PS <= NS;
end
always@(PS or x)
begin
case (PS)
S0: begin
z=0;
NS= x?S1:S0;
end
S1:begin
z=0;
NS= x?S2:S1;
end
S2:begin
z=0;
NS= x?S3:S0;
end
S0:begin
z=x?1:0;
NS= x?S1:S2;
end
endcase
end
endmodule

