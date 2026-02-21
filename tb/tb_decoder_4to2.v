`timescale 1ns/1ps

module tb_encoder_4to2;

reg  [3:0] d;
wire [1:0] y;

encoder_4to2 uut (
    .d(d),
    .y(y)
);

initial begin
    $dumpfile("tb_encoder_4to2.vcd");
    $dumpvars(0, tb_encoder_4to2);
    $monitor("d=%b y=%b", d, y);

    d=4'b0001; #10;
    d=4'b0010; #10;
    d=4'b0100; #10;
    d=4'b1000; #10;

    $finish;
end

endmodule