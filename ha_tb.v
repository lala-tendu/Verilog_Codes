`timescale 1ns / 1ps

module half_adder_tb;
    
    // Inputs
    reg a;
    reg b;
    
    // Outputs
    wire sum;
    wire carry;
    
    // Instantiate the Half Adder module
    half_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );
    
    // Test stimulus
    initial begin
        // Monitor the outputs
        $monitor("a = %b, b = %b | sum = %b, carry = %b", a, b, sum, carry);
        
        // Test case 1
        a = 0; b = 0; // 0 + 0 = 00
        #10;
        
        // Test case 2
        a = 0; b = 1; // 0 + 1 = 01
        #10;
        
        // Test case 3
        a = 1; b = 0; // 1 + 0 = 01
        #10;
        
        // Test case 4
        a = 1; b = 1; // 1 + 1 = 10
        #10;
        
        $finish;
    end
      
endmodule

