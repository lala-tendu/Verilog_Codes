`include"4X1mux.v"
module tb;
  reg [1:0]sel;
  reg d0,d1,d2,d3;
  wire y;
  
  mux_4X1 dut(.*);
  
  initial begin
     $monitor("Time=%0t | sel=%b | d0=%b d1=%b d2=%b d3=%b | y=%b", 
             $time, sel, d0, d1, d2, d3, y);
    
    repeat(10)begin
      sel = $random % 4;
      d0 = $random % 2;
      d1 = $random % 2;
      d2 = $random % 2;
      d3 = $random % 2;
      #10;
    end
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule

    
