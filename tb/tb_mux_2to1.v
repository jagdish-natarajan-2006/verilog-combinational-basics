`timescale 1ns/1ps

module tb_mux2to1;

reg a, b, sel;
wire y;

mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("tb_mux2to1.vcd");
    $dumpvars(0, tb_mux2to1);
    $monitor("a=%b b=%b sel=%b y=%b", a, b, sel, y);

    a=0; b=1;

    sel=0; #10;
    sel=1; #10;

    a=1; b=0;
    sel=0; #10;
    sel=1; #10;

    $finish;
end

endmodule