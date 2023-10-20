module imm_gen(
    input logic [31:0] inst,
    input logic [6:0] enc_type,
    output logic [31:0] j_imm,
    output logic [31:0] b_imm
)

    logic [31:0] j_imm;
    logic [31:0] b_imm;

    always_comb 
    begin
        j_imm = {{11{inst [31]}}, inst [30:21], inst [20], inst [19:12], 1'b0};
        j_imm = {{20{inst [31]}}, inst [7], inst [30:25], inst [11:8], 1'b0};
    end

    always_comb 
    begin
        case(type)
            3'b000: imm
        endcase
    end