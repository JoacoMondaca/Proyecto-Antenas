`timescale 1ns / 1ps

module tb_dsp_subsystem();

    // Reloj del sistema (250 MHz -> Período de 4 ns)
    reg clk;
    reg rst_n;

    // Interfaz AXI-Stream de Entrada (RFDC ajustado a 32 bits = 1 muestra I/Q por ciclo)
    reg  [31:0] rfdc_tdata;
    reg         rfdc_tvalid;
    wire        rfdc_tready;
    reg         rfdc_tlast;

    // Interfaz AXI-Stream de Salida (Salida de fft_power_calculator hacia AXI DMA)
    wire [31:0] dma_tdata;
    wire        dma_tvalid;
    reg         dma_tready;
    wire        dma_tlast;

    // Generador de Reloj a 250 MHz
    always #2 clk = ~clk;

    real phase;
    integer i;
    rfsoc_radiotelescopio_wrapper dut (
        .aclk(clk),
        .aresetn(rst_n),
        
        // Entrada AXI-Stream (conectada al generador del testbench)
        .s_axis_tdata(rfdc_tdata),
        .s_axis_tvalid(rfdc_tvalid),
        .s_axis_tready(rfdc_tready),
        .s_axis_tlast(rfdc_tlast),
        
        // Salida AXI-Stream (conectada al receptor del testbench)
        .m_axis_tdata(dma_tdata),
        .m_axis_tvalid(dma_tvalid),
        .m_axis_tready(dma_tready),
        .m_axis_tlast(dma_tlast)
    );
    initial begin
        clk = 0;
        rst_n = 0;
        rfdc_tdata = 32'd0;
        rfdc_tvalid = 1'b0;
        rfdc_tlast = 1'b0;
        dma_tready = 1'b1; // El DMA se asume listo para escribir
        phase = 0.0;

        // Reset inicial del sistema
        #40 rst_n = 1;
        #20;

        $display("[SIM] Inicio de inyeccion de 4096 muestras RF I/Q (32-bit directo a FFT)...");

        // Enviar 1 trama completa de FFT (4096 muestras complejas, 1 muestra I/Q por ciclo)
        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            rfdc_tvalid <= 1'b1;

            // Generación de tono complejo simulado:
            // Bits [15:0]  = Parte Real (Componente I)
            // Bits [31:16] = Parte Imaginaria (Componente Q)
            rfdc_tdata[15:0]  <= $rtoi(100.0 * $cos(phase)); // I (16-bit signed)
            rfdc_tdata[31:16] <= $rtoi(100.0 * $sin(phase)); // Q (16-bit signed)

            phase = phase + 0.1;

            // Señal TLAST activa en la muestra 4095 (último punto del bloque FFT)
            if (i == 4095)
                rfdc_tlast <= 1'b1;
            else
                rfdc_tlast <= 1'b0;
        end

        @(posedge clk);
        rfdc_tvalid <= 1'b0;
        rfdc_tlast  <= 1'b0;

        // Tiempo de espera para observar la latencia de procesamiento de la FFT y el IP de potencia
        #6000;

        $display("[SIM] Prueba finalizada. Revisa la ventana de simulación en Vivado.");
        $finish;
    end

    // Monitoreo en consola de la salida procesada hacia el AXI DMA
    always @(posedge clk) begin
        if (dma_tvalid && dma_tready) begin
            $display("[DMA OUT] Muestra de potencia recibida = %d | tlast = %b", dma_tdata, dma_tlast);
        end
    end

endmodule