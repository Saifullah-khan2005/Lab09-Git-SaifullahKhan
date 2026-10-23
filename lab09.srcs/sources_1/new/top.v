`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 11:26:06 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input rst,

    // inputs
    input [6:0] opcode_sw,
    input [2:0] funct3_sw,
    input funct7_sw,

    // output
    output reg [15:0] LEDs
);

reg [6:0] opcode;
reg [2:0] funct3;
reg funct7;

// Control signals
wire RegWrite, ALUSrc, MemRead, MemWrite, MemtoReg, Branch;
wire [1:0] ALUOp;
wire [3:0] ALUControl_out;

// modules
MainControl main (
    .opcode(opcode),
    .RegWrite(RegWrite),
    .ALUSrc(ALUSrc),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .MemtoReg(MemtoReg),
    .Branch(Branch),
    .ALUOp(ALUOp)
);

ALUControl alu (
    .ALUOp(ALUOp),
    .funct3(funct3),
    .funct7(funct7),
    .ALUControl(ALUControl_out)
);


// FSM
reg state;
parameter IDLE = 0,
          DISPLAY = 1;


// FSM
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        opcode <= 0;
        funct3 <= 0;
        funct7 <= 0;
        LEDs <= 0;
    end
    else begin
        case(state)

            IDLE: begin
                state <= DISPLAY;
            end

            DISPLAY: begin
                // read switch inputs
                opcode <= opcode_sw;
                funct3 <= funct3_sw;
                funct7 <= funct7_sw;
                // output to leds
                LEDs[0]  <= RegWrite;
                LEDs[1]  <= ALUSrc;
                LEDs[2]  <= MemRead;
                LEDs[3]  <= MemWrite;
                LEDs[4]  <= MemtoReg;
                LEDs[5]  <= Branch;
                LEDs[9:6] <= ALUControl_out;

                state <= DISPLAY; // display until reset switch
            end

        endcase
    end
end

endmodule