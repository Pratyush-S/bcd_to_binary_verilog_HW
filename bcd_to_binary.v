//BCD to Binary 
//Three inputs are taken
//Test bench is present 

module bcd2binary
   (
    input [3:0] a5,a4,a3,a2,a1,
    output [15:0] bin
   );
	wire [15:0]m;
	wire [15:0]n;
	wire [15:0]p;
	wire [15:0]q;
	wire [15:0]r;
	assign m = a5*16'd10000;
	assign n = a4*16'd1000;
	assign p = a3*8'd100;
	assign q = a2*4'd10;
	assign r = {11'b0000,a1};
   assign bin = m + n + p + q + r;

endmodule

module bcd2binary_tb;
reg [3:0]a5,a4,a3,a2,a1;
wire [15:0] bin;

bcd2binary u1(a5,a4,a3,a2,a1,bin);
initial
begin
#1000;
a5 = 4'd0;
a4 = 4'd1;
a3 = 4'd2;
a2 = 4'd4;
a1 = 4'd0;
#1000;
a5 = 4'd1;
a4 = 4'd5;
a3 = 4'd3;
a2 = 4'd5;
a1 = 4'd6;
#1000;
a5 = 4'd0;
a4 = 4'd3;
a3 = 4'd2;
a2 = 4'd2;
a1 = 4'd2;
#1000;
$finish;
end
endmodule

