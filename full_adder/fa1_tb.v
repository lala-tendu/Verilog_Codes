module tb_full_adder;
    reg a, b, cin;         // Testbench inputs
    wire sum, cout;        // Testbench outputs

    // Instantiate the full adder
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor("Time=%0d a=%b b=%b cin=%b -> sum=%b cout=%b", $time, a, b, cin, sum, cout);

        // Generate random test cases
        repeat (10) begin
            a = $random % 2;
            b = $random % 2;
            cin = $random % 2;
            #10;
        end

        $finish;
    end
endmodule

