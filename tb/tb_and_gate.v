`timescale 1ns/1ps

module tb_and_gate;

reg a, b;
wire y;

and_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("tb_and_gate.vcd");
    $dumpvars(0, tb_and_gate);
    $monitor("a=%b b=%b y=%b", a, b, y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule