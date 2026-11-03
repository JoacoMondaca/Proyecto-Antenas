`timescale 1ns / 1ps

module fft_power_calculator #(
    parameter FFT_POINTS = 4096
)(
    input  wire        axis_aclk,
    input  wire        axis_aresetn,
    
    // Entrada AXI-Stream desde el IP Xilinx FFT
    // tdata[15:0] = I (16 bits), tdata[31:16] = Q (16 bits)
    input  wire [31:0] s_axis_fft_tdata,
    input  wire        s_axis_fft_tvalid,
    output wire        s_axis_fft_tready,
    input  wire        s_axis_fft_tlast,
    
    // Salida AXI-Stream hacia el AXI DMA
    output reg  [31:0] m_axis_dma_tdata,
    output reg         m_axis_dma_tvalid,
    input  wire        m_axis_dma_tready,
    output reg         m_axis_dma_tlast
);

    // Separación de componentes I/Q (16 bits signados)
    wire signed [15:0] i_data = s_axis_fft_tdata[15:0];
    wire signed [15:0] q_data = s_axis_fft_tdata[31:16];
    
    // Magnitud al cuadrado: |X|^2 = I^2 + Q^2
    wire unsigned [31:0] i_sq = i_data * i_data;
    wire unsigned [31:0] q_sq = q_data * q_data;
    wire unsigned [31:0] power_sum = i_sq + q_sq;

    // Direct Flow-Through del Handshake AXI-Stream
    assign s_axis_fft_tready = m_axis_dma_tready;

    always @(posedge axis_aclk or negedge axis_aresetn) begin
        if (!axis_aresetn) begin
            m_axis_dma_tdata  <= 32'd0;
            m_axis_dma_tvalid <= 1'b0;
            m_axis_dma_tlast  <= 1'b0;
        end else begin
            if (s_axis_fft_tvalid && m_axis_dma_tready) begin
                m_axis_dma_tdata  <= power_sum;
                m_axis_dma_tvalid <= 1'b1;
                m_axis_dma_tlast  <= s_axis_fft_tlast;
            end else if (m_axis_dma_tready) begin
                m_axis_dma_tvalid <= 1'b0;
                m_axis_dma_tlast  <= 1'b0;
            end
        end
    end

endmodule