// 4X1 Mux 
module mux_4X1(d0,d1,d2,d3,sel,y);
  input wire[1:0]sel;
  input wire d0,d1,d2,d3;
  output reg y;
  
  always@(*)begin
    if(sel==2'b00)
      y=d0;
    else if(sel==2'b01)
      y=d1;
    else if(sel==2'b10)
      y=d2;
    else if(sel==2'b11)
      y=d3;
    else
      y=1'bx;
  end
    
endmodule
    

