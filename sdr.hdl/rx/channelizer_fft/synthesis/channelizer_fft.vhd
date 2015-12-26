-- channelizer_fft.vhd

-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channelizer_fft is
	port (
		clk          : in  std_logic                     := '0';             --    clk.clk
		reset_n      : in  std_logic                     := '0';             --    rst.reset_n
		sink_valid   : in  std_logic                     := '0';             --   sink.sink_valid
		sink_ready   : out std_logic;                                        --       .sink_ready
		sink_error   : in  std_logic_vector(1 downto 0)  := (others => '0'); --       .sink_error
		sink_sop     : in  std_logic                     := '0';             --       .sink_sop
		sink_eop     : in  std_logic                     := '0';             --       .sink_eop
		sink_real    : in  std_logic_vector(13 downto 0) := (others => '0'); --       .sink_real
		sink_imag    : in  std_logic_vector(13 downto 0) := (others => '0'); --       .sink_imag
		fftpts_in    : in  std_logic_vector(5 downto 0)  := (others => '0'); --       .fftpts_in
		inverse      : in  std_logic_vector(0 downto 0)  := (others => '0'); --       .inverse
		source_valid : out std_logic;                                        -- source.source_valid
		source_ready : in  std_logic                     := '0';             --       .source_ready
		source_error : out std_logic_vector(1 downto 0);                     --       .source_error
		source_sop   : out std_logic;                                        --       .source_sop
		source_eop   : out std_logic;                                        --       .source_eop
		source_real  : out std_logic_vector(13 downto 0);                    --       .source_real
		source_imag  : out std_logic_vector(13 downto 0);                    --       .source_imag
		fftpts_out   : out std_logic_vector(5 downto 0)                      --       .fftpts_out
	);
end entity channelizer_fft;

architecture rtl of channelizer_fft is
	component channelizer_fft_fft_ii_0 is
		port (
			clk          : in  std_logic                     := 'X';             -- clk
			reset_n      : in  std_logic                     := 'X';             -- reset_n
			sink_valid   : in  std_logic                     := 'X';             -- sink_valid
			sink_ready   : out std_logic;                                        -- sink_ready
			sink_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- sink_error
			sink_sop     : in  std_logic                     := 'X';             -- sink_sop
			sink_eop     : in  std_logic                     := 'X';             -- sink_eop
			sink_real    : in  std_logic_vector(13 downto 0) := (others => 'X'); -- sink_real
			sink_imag    : in  std_logic_vector(13 downto 0) := (others => 'X'); -- sink_imag
			fftpts_in    : in  std_logic_vector(5 downto 0)  := (others => 'X'); -- fftpts_in
			inverse      : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- inverse
			source_valid : out std_logic;                                        -- source_valid
			source_ready : in  std_logic                     := 'X';             -- source_ready
			source_error : out std_logic_vector(1 downto 0);                     -- source_error
			source_sop   : out std_logic;                                        -- source_sop
			source_eop   : out std_logic;                                        -- source_eop
			source_real  : out std_logic_vector(13 downto 0);                    -- source_real
			source_imag  : out std_logic_vector(13 downto 0);                    -- source_imag
			fftpts_out   : out std_logic_vector(5 downto 0)                      -- fftpts_out
		);
	end component channelizer_fft_fft_ii_0;

begin

	fft_ii_0 : component channelizer_fft_fft_ii_0
		port map (
			clk          => clk,          --    clk.clk
			reset_n      => reset_n,      --    rst.reset_n
			sink_valid   => sink_valid,   --   sink.sink_valid
			sink_ready   => sink_ready,   --       .sink_ready
			sink_error   => sink_error,   --       .sink_error
			sink_sop     => sink_sop,     --       .sink_sop
			sink_eop     => sink_eop,     --       .sink_eop
			sink_real    => sink_real,    --       .sink_real
			sink_imag    => sink_imag,    --       .sink_imag
			fftpts_in    => fftpts_in,    --       .fftpts_in
			inverse      => inverse,      --       .inverse
			source_valid => source_valid, -- source.source_valid
			source_ready => source_ready, --       .source_ready
			source_error => source_error, --       .source_error
			source_sop   => source_sop,   --       .source_sop
			source_eop   => source_eop,   --       .source_eop
			source_real  => source_real,  --       .source_real
			source_imag  => source_imag,  --       .source_imag
			fftpts_out   => fftpts_out    --       .fftpts_out
		);

end architecture rtl; -- of channelizer_fft
