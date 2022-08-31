-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Fri Nov 13 01:31:44 2020
-- Host        : LAPTOP-R5AB403I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Verilog/mux4x1_3/mux4x1_3.srcs/sources_1/ip/orgate_0/orgate_0_funcsim.vhdl
-- Design      : orgate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity orgate_0_orgate is
  port (
    e : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of orgate_0_orgate : entity is "orgate";
end orgate_0_orgate;

architecture STRUCTURE of orgate_0_orgate is
begin
\e[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(0),
      I1 => c(0),
      I2 => a(0),
      I3 => d(0),
      O => e(0)
    );
\e[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(1),
      I1 => c(1),
      I2 => a(1),
      I3 => d(1),
      O => e(1)
    );
\e[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(2),
      I1 => c(2),
      I2 => a(2),
      I3 => d(2),
      O => e(2)
    );
\e[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(3),
      I1 => c(3),
      I2 => a(3),
      I3 => d(3),
      O => e(3)
    );
\e[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(4),
      I1 => c(4),
      I2 => a(4),
      I3 => d(4),
      O => e(4)
    );
\e[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(5),
      I1 => c(5),
      I2 => a(5),
      I3 => d(5),
      O => e(5)
    );
\e[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(6),
      I1 => c(6),
      I2 => a(6),
      I3 => d(6),
      O => e(6)
    );
\e[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b(7),
      I1 => c(7),
      I2 => a(7),
      I3 => d(7),
      O => e(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity orgate_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of orgate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of orgate_0 : entity is "orgate_0,orgate,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of orgate_0 : entity is "orgate_0,orgate,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=orgate,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=8}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of orgate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of orgate_0 : entity is "orgate,Vivado 2015.2";
end orgate_0;

architecture STRUCTURE of orgate_0 is
begin
inst: entity work.orgate_0_orgate
     port map (
      a(7 downto 0) => a(7 downto 0),
      b(7 downto 0) => b(7 downto 0),
      c(7 downto 0) => c(7 downto 0),
      d(7 downto 0) => d(7 downto 0),
      e(7 downto 0) => e(7 downto 0)
    );
end STRUCTURE;
