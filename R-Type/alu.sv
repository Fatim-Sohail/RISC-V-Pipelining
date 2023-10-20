module alu 
(
    input  logic [ 3:0] aluop,
    input  logic [31:0] opr_a,
    input  logic [31:0] opr_b,
    output logic [31:0] opr_res
);
    
    always_comb
    begin
        case(aluop)
            4'b0000: opr_res = opr_a + opr_b; //ADD
            4'b0001: opr_res = opr_a - opr_b; //SUB
            4'b0110: opr_res = opr_a << opr_b; //SLL
            4'b0011: opr_res = opr_a < opr_b; //SLT
            4'b0100: opr_res = opr_a < opr_b; //SLTU
            4'b0000: opr_res = opr_a ^ opr_b; //XOR
            4'b1001: opr_res = opr_a | opr_b; //OR
            4'b1010: opr_res = opr_a & opr_b; //AND

        endcase
    end

endmodule