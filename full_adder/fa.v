module half_adder (
    input  wire A,B,Cin
    output reg sum, Cout
);
   always @(A or B or Cin) 
begin 
sum = A ^ B ^ Cin; 
Cout = A&B | (A^B) & Cin;
end
endmodule
