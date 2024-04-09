module encoder83df(i, a, b, c); 
input [7:0]i; 
output a,b,c; 
assign a=i[4] | i[5] | i[6] | i[7];  
assign b=i[2] | i[3] | i[6] | i[7];  
assign c=i[1] | i[3] | i[5] | i[7]; 
endmodule
