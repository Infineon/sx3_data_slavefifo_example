--VHDL instantiation template

component fifo is
    port (gpif_fifo_Data: in std_logic_vector(15 downto 0);
        gpif_fifo_Q: out std_logic_vector(15 downto 0);
        gpif_fifo_Clock: in std_logic;
        gpif_fifo_Empty: out std_logic;
        gpif_fifo_Full: out std_logic;
        gpif_fifo_RdEn: in std_logic;
        gpif_fifo_Reset: in std_logic;
        gpif_fifo_WrEn: in std_logic
    );
    
end component fifo; -- sbp_module=true 
_inst: fifo port map (gpif_fifo_Data => __,gpif_fifo_Q => __,gpif_fifo_Clock => __,
           gpif_fifo_Empty => __,gpif_fifo_Full => __,gpif_fifo_RdEn => __,
           gpif_fifo_Reset => __,gpif_fifo_WrEn => __);
