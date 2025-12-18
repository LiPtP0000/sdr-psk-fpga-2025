`timescale 1ns / 1ps

module skid_buffer_1m_16m #(
    parameter DATA_WIDTH = 32,
    parameter USER_WIDTH = 1    // Added parameter for tuser width
) (
    input wire clk,   // Global 32MHz clock
    input wire rst_n,

    // --- Slave Interface (1MHz domain) ---
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,
    input  wire                  s_axis_tvalid,
    output reg                   s_axis_tready,
    input  wire                  s_axis_tlast,   // New
    input  wire [USER_WIDTH-1:0] s_axis_tuser,   // New

    // --- Master Interface (16MHz domain) ---
    output reg  [DATA_WIDTH-1:0] m_axis_tdata,
    output reg                   m_axis_tvalid,
    input  wire                  m_axis_tready,
    output reg                   m_axis_tlast,   // New
    output reg  [USER_WIDTH-1:0] m_axis_tuser,   // New

    // --- Clock Enables ---
    input wire ce_1m,
    input wire ce_16m
);

    localparam EMPTY = 0;
    localparam FULL = 1;

    reg  state;

    // Defined Handshakes (Only valid when the respective clock enable is high)
    wire master_write = s_axis_tvalid && s_axis_tready && ce_1m;
    wire slave_read = m_axis_tvalid && m_axis_tready && ce_16m;

    // --- State Transition Logic ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= EMPTY;
        end else begin
            case (state)
                EMPTY: if (master_write) state <= FULL;
                FULL:  if (slave_read) state <= EMPTY;
            endcase
        end
    end

    // --- Output Control Logic (Moore Machine) ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            m_axis_tvalid <= 1'b0;
            s_axis_tready <= 1'b1;
        end else begin
            case (state)
                EMPTY: begin
                    m_axis_tvalid <= 1'b0;
                    s_axis_tready <= 1'b1;
                end
                FULL: begin
                    m_axis_tvalid <= 1'b1;
                    s_axis_tready <= 1'b0;
                end
            endcase
        end
    end

    // --- Data Latching Logic (The "Bundle") ---
    // To ensure alignment, tdata, tlast, and tuser must be latched at the SAME time
    // in the SAME clock cycle using the SAME condition.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            m_axis_tdata <= {DATA_WIDTH{1'b0}};
            m_axis_tlast <= 1'b0;
            m_axis_tuser <= {USER_WIDTH{1'b0}};
        end else begin
            // When a 1MHz transaction occurs, capture the entire bundle
            if (state == EMPTY && master_write) begin
                m_axis_tdata <= s_axis_tdata;
                m_axis_tlast <= s_axis_tlast;
                m_axis_tuser <= s_axis_tuser;
            end
            // When a 16MHz transaction is completed, we could optionally clear these,
            // but the protocol only requires valid to go low (state transition).
        end
    end

endmodule
