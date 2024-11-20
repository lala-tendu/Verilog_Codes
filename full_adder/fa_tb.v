module tb_full_adder;
    reg A, B, Cin;         // Testbench inputs
    wire sum, Cout;        // Testbench outputs

    // Instantiate the full adder
    full_adder dut (.*);

    initial begin
        $monitor("Time=%0d A=%b B=%b Cin=%b -> sum=%b Cout=%b", $time, A, B, Cin, sum, Cout);

        // Generate random test cases
        repeat (10) begin
            A = $random % 2;
            B = $random % 2;
            Cin = $random % 2;
            #10;
        end

        $finish;
    end
endmodule

