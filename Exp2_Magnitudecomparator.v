module comparator(a,b,l,g,e); 
input [3:0]a,b; 
output reg l,g,e; 
always@(*) 
begin 
if(a>b) 
begin  
l=1'b0; 
g=1'b1; 
e=1'b0; 
end 
else if(a<b) 
begin 
l=1'b1; 
g=1'b0; 
e=1'b0; 
end 
else 
begin 
l=1'b0; 
g=1'b0; 
 
e=1'b1; 
end 
end 
endmodule
