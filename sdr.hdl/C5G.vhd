library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity C5G is
port(
	CLOCK_125_p : in std_logic;
	CLOCK_50_B5B : in std_logic;
	CLOCK_50_B6A : in std_logic;
	CLOCK_50_B7A : in std_logic;
	CLOCK_50_B8A : in std_logic;
	
	CPU_RESET_n : in std_logic;
	KEY : in std_logic_vector(3 downto 0);
	
	LEDG : out std_logic_vector(7 downto 0);
	LEDR : out std_logic_vector(9 downto 0);
	
	
--	AUD_ADCDAT : in std_logic;
--	AUD_ADCLRCK : inout std_logic;
--	AUD_BCLK : inout std_logic;
--	AUD_DACDAT : out std_logic;
--	AUD_DACLRCK : inout std_logic;
--	AUD_XCK : out std_logic;
--
--	I2C_SCL : out std_logic;
--	I2C_SDA : inout std_logic;

	
	REFCLK_p0 : in std_logic;
	--REFCLK_p1 : in std_logic;
	--SMA_GXB_RX_p : in std_logic;
	SMA_GXB_TX_p : out std_logic;
	
	
	
	UART_RX : in std_logic;
	UART_TX : out std_logic

);
end C5G;

architecture structure of C5G is

	component MODULATOR is
		port(
			clock 							: in  std_logic;
			reset								: in  std_logic;
			DSM_in 							: in std_logic_vector (17 downto 0);
			tx_serial_data					: out std_logic;
			pll_locked						: out std_logic
		);
	end component MODULATOR;
	
	component NCO is
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset_n   : in  std_logic                     := 'X';             -- reset_n
			clken     : in  std_logic                     := 'X';             -- clken
			phi_inc_i : in  std_logic_vector(31 downto 0) := (others => 'X'); -- phi_inc_i
			fsin_o    : out std_logic_vector(17 downto 0);                    -- fsin_o
			out_valid : out std_logic                                         -- out_valid
		);
	end component NCO;
	
	component RS232 is
		port (
			clk             : in  std_logic                    := 'X';             -- clk
			reset           : in  std_logic                    := 'X';             -- reset
			UART_RXD        : in  std_logic                    := 'X';             -- RXD
			UART_TXD        : out std_logic;                                       -- TXD
			from_uart_ready : in  std_logic                    := 'X';             -- ready
			from_uart_data  : out std_logic_vector(7 downto 0);                    -- data
			from_uart_error : out std_logic;                                       -- error
			from_uart_valid : out std_logic;                                       -- valid
			to_uart_data    : in  std_logic_vector(7 downto 0) := (others => 'X'); -- data
			to_uart_error   : in  std_logic                    := 'X';             -- error
			to_uart_valid   : in  std_logic                    := 'X';             -- valid
			to_uart_ready   : out std_logic                                        -- ready
		);
	end component RS232;
	
	component CICU is
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset_n   : in  std_logic                     := 'X';             -- reset_n
			in_error  : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			in_valid  : in  std_logic                     := 'X';             -- valid
			in_ready  : out std_logic;                                        -- ready
			in_data   : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- in_data
			out_data  : out std_logic_vector(17 downto 0);                    -- out_data
			out_error : out std_logic_vector(1 downto 0);                     -- error
			out_valid : out std_logic;                                        -- valid
			out_ready : in  std_logic                     := 'X'              -- ready
		);
	end component CICU;
	
	component FIFO
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdclk		: IN STD_LOGIC ;
		rdreq		: IN STD_LOGIC ;
		wrclk		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdempty		: OUT STD_LOGIC ;
		wrfull		: OUT STD_LOGIC 
	);
	end component;

	


	
	signal reset : std_logic;
	
	signal out_valid						: std_logic;
	signal phi_inc_i 						: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(34360, 32)); -- 515396
	signal fsin_o    						: std_logic_vector(17 downto 0);
	signal pll_locked						: std_logic;
	signal clken							: std_logic;
	signal from_uart_ready				: std_logic;
	signal from_uart_data				: std_logic_vector (7 downto 0);
	signal from_uart_error				: std_logic;
	signal from_uart_valid				: std_logic;
	signal to_uart_ready				: std_logic;
	signal to_uart_data				: std_logic_vector (7 downto 0);
	signal to_uart_error				: std_logic;
	signal to_uart_valid				: std_logic;
	signal modulator_in				: std_logic_vector(17 downto 0);
	signal	in_error  : std_logic_vector(1 downto 0)  := (others => '0'); -- error
	signal	in_valid  : std_logic                     := '0';             -- valid
	signal	in_ready  : std_logic;                                        -- ready
	signal	in_data   : std_logic_vector(7 downto 0)  := (others => '0'); -- in_data
	signal	out_data  : std_logic_vector(17 downto 0);                    -- out_data
	signal	out_error : std_logic_vector(1 downto 0);                     -- error
	signal	c_out_valid : std_logic;                                        -- valid
	signal	out_ready : std_logic                     := '0' ;             -- ready
	
	signal data_sig		:  STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal rdclk_sig		:  STD_LOGIC ;
	signal rdreq_sig		:  STD_LOGIC ;
	signal wrclk_sig		:  STD_LOGIC ;
	signal wrreq_sig		:  STD_LOGIC ;
	signal q_sig		:  STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal rdempty_sig		:  STD_LOGIC ;
	signal wrfull_sig		:  STD_LOGIC ;
	signal state : std_logic := '0';
	signal uart : std_logic_vector(7 downto 0);
	
begin
	reset <= not CPU_RESET_n;
	
	LEDG(0) <= reset;
	LEDG(1) <= pll_locked;
	LEDG(2) <= out_valid;
	LEDG(3) <= from_uart_valid;
	LEDG(4) <= c_out_valid;
	LEDG(5) <= in_ready;
	LEDG(6) <= in_valid;
	LEDR(8) <= in_error(0);
	LEDR(9) <= in_error(1);
	
	clken <= not KEY(0);
	
	r0 : component RS232
		port map (
			clk             => CLOCK_125_p,             --                        clk.clk
			reset           => reset,           --                      reset.reset
			UART_RXD        => UART_RX,        --         external_interface.RXD
			UART_TXD        => UART_TX,        --                           .TXD
			from_uart_ready => from_uart_ready, -- avalon_data_receive_source.ready
			from_uart_data  => from_uart_data,  --                           .data
			from_uart_error => from_uart_error, --                           .error
			from_uart_valid => from_uart_valid, --                           .valid
			to_uart_data    => to_uart_data,    --  avalon_data_transmit_sink.data
			to_uart_error   => to_uart_error,   --                           .error
			to_uart_valid   => to_uart_valid,   --                           .valid
			to_uart_ready   => to_uart_ready    --                           .ready
		);
 
	
	u0 : NCO
		port map (
			clk       => CLOCK_125_p,       -- clk.clk
			reset_n   => CPU_RESET_n,   -- rst.reset_n
			clken     => clken,     --  in.clken
			phi_inc_i => phi_inc_i, --    .phi_inc_i
			fsin_o    => fsin_o,    -- out.fsin_o
			out_valid => out_valid  --    .out_valid
		);
		
	cic_0 : component CICU
		port map (
			clk       => CLOCK_125_p,       --     clock.clk
			reset_n   => CPU_RESET_n,   --     reset.reset_n
			in_error  => in_error,  --  av_st_in.error
			in_valid  => in_valid,  --          .valid
			in_ready  => in_ready,  --          .ready
			in_data   => in_data,   --          .in_data
			out_data  => out_data,  -- av_st_out.out_data
			out_error => out_error, --          .error
			out_valid => c_out_valid, --          .valid
			out_ready => out_ready  --          .ready
		);


	FIFO_inst : FIFO PORT MAP (
		data	 => data_sig,
		rdclk	 => rdclk_sig,
		rdreq	 => rdreq_sig,
		wrclk	 => wrclk_sig,
		wrreq	 => wrreq_sig,
		q	 => q_sig,
		rdempty	 => rdempty_sig,
		wrfull	 => wrfull_sig
	);
	
	
	rdclk_sig <= CLOCK_125_p;
	wrclk_sig <= from_uart_valid;
	data_sig <= from_uart_data;
	wrreq_sig <= from_uart_valid;
	
--	process(CLOCK_125_p)
--		
--	begin
--		if rising_edge(CLOCK_125_p) then
--			if state = '1' then
--				wrreq_sig <= '0';
--				data_sig <= (others => '0');
--			end if;
--			if from_uart_valid = '1' and state = '0' then
--				wrreq_sig <= '1';
--				data_sig <= from_uart_data;
--				state <= '1';
--			else 
--				if from_uart_valid = '0' and state = '1' then
--					state <= '0';
--				end if;
--			end if;
--		end if;
--	end process;
	
	LEDR(0) <= from_uart_data(0);
	LEDR(1) <= from_uart_data(1);
	LEDR(2) <= from_uart_data(2);
	LEDR(3) <= from_uart_data(3);
	LEDR(4) <= from_uart_data(4);
	LEDR(5) <= from_uart_data(5);
	LEDR(6) <= from_uart_data(6);
	LEDR(7) <= from_uart_data(7);


	from_uart_ready <= in_ready;
	
	process(from_uart_valid)
	begin
		if from_uart_valid = '1' then
			to_uart_data <= from_uart_data;
			uart <= from_uart_data;
			if to_uart_ready = '1' then
				to_uart_valid <= '1';
			else 
				to_uart_valid <= '0';
			end if;
		else
			to_uart_valid <= '0';
		end if;
	end process;

	process(CLOCK_125_p)
	begin
		if rising_edge(CLOCK_125_p) then
			if reset = '1' then
				modulator_in <= (others => '0');
--				to_uart_data <= (others => '0');
--				to_uart_valid <= '0';
				in_data <= (others => '0');
				in_valid <= '0';
				out_ready <= '1';
			else
				if clken = '1' then
					modulator_in <= fsin_o;
				else 
				
--					if rdempty_sig = '0' then
--						
--						if in_ready = '1' then
--							rdreq_sig <= '1';
--							in_data <= q_sig;
--							in_valid <= '1';
--							
----							if to_uart_ready = '1' then
----								to_uart_data <= q_sig;
----								to_uart_valid <= '1';
----							else
----								to_uart_valid <= '0';
----							end if;
--						else
--							in_valid <= '0';
--							rdreq_sig <= '0';
----							to_uart_valid <= '0';
--						end if;
--						
--						
--					else
--							in_valid <= '0';
--							rdreq_sig <= '0';
----							to_uart_valid <= '0';
--					end if;
					if in_ready = '1' then
						in_data <= uart;
						in_valid <= '1';
					else
						in_valid <= '0';
						in_data <= (others => '0');
					end if;
					out_ready <= '1';
					if c_out_valid = '1' then
						modulator_in <= out_data;
						LEDG(7) <= '1';
					else
						LEDG(7) <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
		
	
	m_0 : MODULATOR
		port map(
			clock => REFCLK_p0,
			reset => reset,
			DSM_in => modulator_in,
			
			tx_serial_data => SMA_GXB_TX_p,
			pll_locked => pll_locked
		);

end structure;