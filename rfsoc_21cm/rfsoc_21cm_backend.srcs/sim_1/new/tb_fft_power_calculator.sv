`timescale 1ns / 1ps

module tb_fft_power_calculator();

    reg clk;
    reg rst_n;
    reg [31:0] fft_tdata;
    reg fft_tvalid;
    wire fft_tready;
    reg fft_tlast;
    
    wire [31:0] dma_tdata;
    wire dma_tvalid;
    reg dma_ready;
    wire dma_last;

    // Instanciación del Unit Under Test (UUT)
    fft_power_calculator #(
        .FFT_POINTS(4096)
    ) uut (
        .axis_aclk(clk),
        .axis_aresetn(rst_n),
        .s_axis_fft_tdata(fft_tdata),
        .s_axis_fft_tvalid(fft_tvalid),
        .s_axis_fft_tready(fft_tready),
        .s_axis_fft_tlast(fft_tlast),
        .m_axis_dma_tdata(dma_tdata),
        .m_axis_dma_tvalid(dma_tvalid),
        .m_axis_dma_tready(dma_ready),
        .m_axis_dma_tlast(dma_last)
    );

    // Generación de Reloj @ 250 MHz (Período de 4 ns)
    always #2 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        fft_tdata = 0;
        fft_tvalid = 0;
        fft_tlast = 0;
        dma_ready = 1;

        #20 rst_n = 1;
        #20;

        // Inyección de prueba: Frame de 4096 muestras I/Q
        // Valor constante de prueba: I = 10, Q = 20 -> Potencia esperada = 10^2 + 20^2 = 500
        for (int k = 0; k < 4096; k++) begin
            @(posedge clk);
            fft_tvalid <= 1'b1;
            fft_tdata[15:0]  <= 16'sd10; 
            fft_tdata[31:16] <= 16'sd20; 
            fft_tlast <= (k == 4095) ? 1'b1 : 1'b0;
        end

        @(posedge clk);
        fft_tvalid <= 1'b0;
        fft_tlast  <= 1'b0;
        #50;
        
        if (dma_tdata == 32'd500)
            $display("[SUCCESS] Calculo de potencia verificado correctamente: %d (I^2 + Q^2)", dma_tdata);
        else
            $display("[ERROR] Resultado incorrecto: %d", dma_tdata);
            
        $finish;
    end

endmodule