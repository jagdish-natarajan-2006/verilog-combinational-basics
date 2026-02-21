`timescale 1ns/1ps

module tb_ripple_adder_4bit;

reg  [3:0] a, b;
reg  cin;
wire [3:0] sum;
wire cout;

ripple_adder_4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("tb_ripple_adder_4bit.vcd");
    $dumpvars(0, tb_ripple_adder_4bit);
    $monitor("a=%b b=%b cin=%b sum=%b cout=%b", a, b, cin, sum, cout);

    a=4'd3;  b=4'd5;  cin=0; #10;
    a=4'd7;  b=4'd8;  cin=0; #10;
    a=4'd15; b=4'd1;  cin=0; #10;
    a=4'd9;  b=4'd6;  cin=1; #10;

    $finish;
end

endmodule