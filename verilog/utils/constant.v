module CONSTANT #(
    parameter WIDTH = 4,
    parameter VALUE = 0
) (
    output wire [WIDTH-1:0] constant_out
);
    
    assign constant_out = {WIDTH{1'b0}} | VALUE;
    
endmodule