module Mux_8_1 (s0,s1,s2, i,y); 
input [7:0]i; 
input 50, s1,s2; 
output y; 
wire [7:0]w; 
assign w[0]=(~s2) & (~sl) & (~50)&i[0]; 
assign w[1]=(~32)&(~51) & (50) &i [1]; 
assign w[2]=(~52) & (sl) & (~50)&i [2]; 
assign w[3]=(~52) & (51) & (50) &i [3]; 
assign w[4]=(s2) & (sl) & (~50)&i [4]; 
assign w[5]=(s2) & (sl) & (s0) &i [5]; 
assign w[6]=(52) & (51)&(~50)&i [6]; 
assign w[7]=(s2) & (51) & (s0)&i [7]; 
assign y=w[0][w[1] w[2] w[3] w[4] w[5] w[6] w[7]; 
endmodule
