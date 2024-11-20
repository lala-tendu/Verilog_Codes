module half_adder (
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
);
    assign sum = a ^ b;      // XOR for sum
    assign carry = a & b;    // AND for carry
endmodule
module full_adder (
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);
    wire sum1, carry1, carry2;

    // First half adder for inputs a and b
    half_adder HA1 (
        .a(a),
        .b(b),
        .sum(sum1),
        .carry(carry1)
    );

    // Second half adder for sum1 and carry-in
    half_adder HA2 (
        .a(sum1),
        .b(cin),
        .sum(sum),
        .carry(carry2)
    );

    // Final carry output
    assign cout = carry1 | carry2;  // OR gate for final carry-out
endmodule

