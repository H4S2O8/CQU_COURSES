-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Fri Nov 13 01:31:44 2020
-- Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/orgate_0/orgate_0_stub.vhdl
-- Design      : orgate_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orgate_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end orgate_0;

architecture stub of orgate_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[7:0],b[7:0],c[7:0],d[7:0],e[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "orgate,Vivado 2015.2";
begin
end;
