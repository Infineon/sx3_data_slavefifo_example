--VHDL instantiation template

component gpif_fifo_msb is
    port (fifo_ip_Data: in std_logic_vector(15 downto 0);
        fifo_ip_Q: out std_logic_vector(15 downto 0);
        fifo_ip_Clock: in std_logic;
        fifo_ip_Empty: out std_logic;
        fifo_ip_Full: out std_logic;
        fifo_ip_RdEn: in std_logic;
        fifo_ip_Reset: in std_logic;
        fifo_ip_WrEn: in std_logic
    );
    
end component gpif_fifo_msb; -- sbp_module=true 
_inst: gpif_fifo_msb port map (fifo_ip_Data => __,fifo_ip_Q => __,fifo_ip_Clock => __,
            fifo_ip_Empty => __,fifo_ip_Full => __,fifo_ip_RdEn => __,fifo_ip_Reset => __,
            fifo_ip_WrEn => __);
