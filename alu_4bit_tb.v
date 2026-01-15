module alu_4bit_tb;

reg [3:0] A, B;
reg [2:0] SEL;
wire [3:0] RESULT;
wire CARRY;
wire ZERO;

alu_4bit dut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT),
    .CARRY(CARRY),
    .ZERO(ZERO)
);

initial begin
    A = 4'b0101; B = 4'b0011;

    SEL = 3'b000; #10; // ADD
    SEL = 3'b001; #10; // SUB
    SEL = 3'b010; #10; // AND
    SEL = 3'b011; #10; // OR
    SEL = 3'b100; #10; // XOR
    SEL = 3'b101; #10; // NOT
    SEL = 3'b110; #10; // LSHIFT
    SEL = 3'b111; #10; // RSHIFT

    $stop;
end

endmodule
