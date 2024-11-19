module half_adder (
    input  a,         
    input  b,          
    output sum,        
    output carry      
);
    
    // Logic for sum and carry
    assign sum = a ^ b;       // XOR operation for sum
    assign carry = a & b;     // AND operation for carry
    
endmodule
