
module half_adder_tb;
    reg a;
    reg b;
    wire sum;
    wire carry;
    
    // Instantiate the Half Adder module
    half_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );
    
    initial begin
        // Monitor the outputs
        $monitor("a = %b, b = %b | sum = %b, carry = %b", a, b, sum, carry);
        
        a = 0; b = 0; 
        #10;
        
        a = 0; b = 1; 
        #10;
        
        a = 1; b = 0; 
        #10;
        
        a = 1; b = 1; 
        #10;
        
        $finish;
    end
      
endmodule
