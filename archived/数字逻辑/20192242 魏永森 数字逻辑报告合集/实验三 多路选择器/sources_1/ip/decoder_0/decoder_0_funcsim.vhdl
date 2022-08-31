-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Fri Nov 13 01:32:34 2020
-- Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/decoder_0/decoder_0_funcsim.vhdl
-- Design      : decoder_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder_0 is
  port (
    a : in STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decoder_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decoder_0 : entity is "decoder_0,decoder,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decoder_0 : entity is "decoder_0,decoder,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=decoder,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decoder_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decoder_0 : entity is "decoder,Vivado 2015.2";
end decoder_0;

architecture STRUCTURE of decoder_0 is
  signal \^a\ : STD_LOGIC;
begin
  \^a\ <= a;
  b(2) <= \^a\;
  b(1) <= \^a\;
  b(0) <= \^a\;
end STRUCTURE;
