`timescale 1ns/1ps

module tb_decoder_2to4;

reg  [1:0] a;
wire [3:0] y;

decoder_2to4 uut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("tb_decoder_2to4.vcd");
    $dumpvars(0, tb_decoder_2to4);
    $monitor("a=%b y=%b", a, y);

    a=2'b00; #10;
    a=2'b01; #10;
    a=2'b10; #10;
    a=2'b11; #10;

    $finish;
end

endmodule