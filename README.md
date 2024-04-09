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
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/b2a9d191-621c-463e-82ea-fb5a3574d2d3)

## PROGRAM:

module encoder83df(i, a, b, c);<br>
input [7:0]i;<br>
output a,b,c;<br>
assign a=i[4] | i[5] | i[6] | i[7]; <br>
assign b=i[2] | i[3] | i[6] | i[7]; <br>
assign c=i[1] | i[3] | i[5] | i[7];<br>
endmodule
## OUTPUT:               
                   

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/649444ee-f1e0-4025-9abc-c4a2dc9f92ae)



  ## DECODER3:8:
  
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/6e8805a0-7f9f-412f-89a4-acf1f0830a99)


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
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/e4cc688a-0dc7-4727-8662-086b385044a8)

##  MULTIPLEXER 8:1:
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/3381082d-222c-4f82-bdd1-875c28ab9d34)

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


![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/b27953b7-6cc5-49a4-ba9d-5b04be05b76a)


                       
 

## DEMULTIPLEXER 1:8:
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/10916f35-34da-44d1-8274-ed49939c82a1)


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

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/cad31d51-097a-4d5a-b01f-78438d463d94)

## COMPARATOR:
 ![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/14697efc-944a-4aab-be03-d8388f8b9ce6)

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
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_2/assets/160568654/7f84d544-8124-4fc8-886f-9ebe75d37002)


## RESULT:
	The simulate and synthesis ENCODER, DECODER, MULTIPLEXER, DEMULTIPLEXER, MAGNITUDE COMPARATOR using VIVADO is successfully verified.

