# SIMULATE AND SYNTHESIS ENCODER, DECODER, MULTIPLEXER, DEMULTIPLEXER, MAGNITUDE COMPARATOR USING VIVADO.
## AIM: 
To simulate and synthesis ENCODER, DECODER, MULTIPLEXER, DEMULTIPLEXER, MAGNITUDE COMPARATOR using VIVADO.
## APPARATUS REQUIRED: 
VIVADO 2023.2
## PROCEDURE:
 STEP:1 Start the Vivado, Select and Name the New project.<br>
 STEP:2 Select the device family, device, package and speed. <br>
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.<br>
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it.<br>
STEP:5 Select the Behavioural Simulation in the Source Window and click the check syntax.<br>
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.        
##  ENCODER 8:3:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/9545fd02-934d-4d04-8e15-7f4b703cc91a)
## PROGRAM:
module encoder83df(i, a, b, c);<br>
input [7:0]i;<br>
output a,b,c;<br>
assign a=i[4] | i[5] | i[6] | i[7]; <br>
assign b=i[2] | i[3] | i[6] | i[7]; <br>
assign c=i[1] | i[3] | i[5] | i[7];<br>
endmodule
## OUTPUT:                          
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/aa76db81-e951-434e-a613-62aa608d6f4f)
## DECODER3:8:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/bbd40d54-e59a-4b83-a17b-b2bb381e8018)
## PROGRAM:
module decoder_3_8(s,y);<br>
input [2:0]s;<br>
output [7:0]y;<br>
assign y[0]=~s[2]&~s[1]&~s[0];<br>
assign y[1]=~s[2]&~s[1]&s[0];<br>
assign y[2]=~s[2]&s[1]&~s[0];<br>
assign y[3]=~s[2]&s[1]&s[0];<br>
assign y[4]=s[2]&~s[1]&~s[0];<br>
assign y[5]=s[2]&~s[1]&s[0];<br>
assign y[6]=s[2]&s[1]&~s[0];<br>
assign y[7]=s[2]&s[1]&s[0];<br>
endmodule
## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/2c430127-9fa0-4dbb-aeeb-1930978a8754)
##  MULTIPLEXER 8:1:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/81e886bb-97d6-4a51-aa2f-d7e6429f6525)
## PROGRAM: 
module Mux 8 1 (s0,s1,s2, i,y);<br>
input [7:0]i;<br>
input 50, s1,s2;<br>
output y;<br>
wire [7:0]w;<br>
assign w[0]=(~s2) & (~sl) & (~50)&i[0];<br>
assign w[1]=(~32)&(~51) & (50) &i [1];<br>
assign w[2]=(~52) & (sl) & (~50)&i [2];<br>
assign w[3]=(~52) & (51) & (50) &i [3];<br>
assign w[4]=(s2) & (sl) & (~50)&i [4];<br>
assign w[5]=(s2) & (sl) & (s0) &i [5];<br>
assign w[6]=(52) & (51)&(~50)&i [6];<br>
assign w[7]=(s2) & (51) & (s0)&i [7];<br>
assign y=w[0][w[1] w[2] w[3] w[4] w[5] w[6] w[7];<br>
endmodule
## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/bb7f4511-0128-414b-9dba-b54a8fedb5ae)
## DEMULTIPLEXER 1:8:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/ae62dd34-ad89-4413-9c09-5a86b5c1237b)
## PROGRAM:
module fa (a,b,c,sum, carry);<br>
input a,b,c;<br>
output sum, carry;<br>
wire w1,w2,w3;<br>
xor gl(wl,a,b);<br>
xor g2 (w2,a,b);<br>
xor g3 (sum, w1,c);<br>
and (w3,c,w1);<br>
or g5 (carry, w3,w2);<br>
endmodule
## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/d6b8fb93-d57c-4592-aff2-99b387590e9d)
## COMPARATOR:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/ab00026f-7936-4353-b9e2-847bad0c7bff)
## PROGRAM:
module comparator(a,b,l,g,e);<br>
input [3:0]a,b;<br>
output reg l,g,e;<br>
always@(*)<br>
begin<br>
if(a>b)<br>
begin <br>
l=1'b0;<br>
g=1'b1;<br>
e=1'b0;<br>
end<br>
else if(a<b)<br>
begin<br>
l=1'b1;<br>
g=1'b0;<br>
e=1'b0;<br>
end<br>
else<br>
begin<br>
l=1'b0;<br>
g=1'b0;<br>
e=1'b1;<br>
end<br>
end<br>
endmodule<br>
## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-2/assets/160568654/263f8572-ecce-421e-a09f-0f252ee44691)
## RESULT:
The simulate and sythesis ENCODER, DECODER, MULTIPLEXER, DEMULTIPLEXER, MAGNITUDE COMPARATOR using VIVADO is successfully verified.

