
################################################################
# This is a generated script based on design: mux4x1_3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source mux4x1_3_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name mux4x1_3

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set f [ create_bd_port -dir O -from 2 -to 0 f ]
  set s0 [ create_bd_port -dir I s0 ]
  set s1 [ create_bd_port -dir I s1 ]
  set w0 [ create_bd_port -dir I -from 2 -to 0 w0 ]
  set w1 [ create_bd_port -dir I -from 2 -to 0 w1 ]
  set w2 [ create_bd_port -dir I -from 2 -to 0 w2 ]
  set w3 [ create_bd_port -dir I -from 2 -to 0 w3 ]

  # Create instance: andgate_0, and set properties
  set andgate_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:andgate:1.0 andgate_0 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $andgate_0

  # Create instance: andgate_1, and set properties
  set andgate_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:andgate:1.0 andgate_1 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $andgate_1

  # Create instance: andgate_2, and set properties
  set andgate_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:andgate:1.0 andgate_2 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $andgate_2

  # Create instance: andgate_3, and set properties
  set andgate_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:andgate:1.0 andgate_3 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $andgate_3

  # Create instance: decoder_0, and set properties
  set decoder_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:decoder:1.0 decoder_0 ]

  # Create instance: decoder_1, and set properties
  set decoder_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:decoder:1.0 decoder_1 ]

  # Create instance: notgate_0, and set properties
  set notgate_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:notgate:1.0 notgate_0 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $notgate_0

  # Create instance: notgate_1, and set properties
  set notgate_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:notgate:1.0 notgate_1 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $notgate_1

  # Create instance: orgate_0, and set properties
  set orgate_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:orgate:1.0 orgate_0 ]
  set_property -dict [ list CONFIG.WIDTH {3}  ] $orgate_0

  # Create port connections
  connect_bd_net -net andgate_0_d [get_bd_pins andgate_0/d] [get_bd_pins orgate_0/a]
  connect_bd_net -net andgate_1_d [get_bd_pins andgate_1/d] [get_bd_pins orgate_0/b]
  connect_bd_net -net andgate_2_d [get_bd_pins andgate_2/d] [get_bd_pins orgate_0/c]
  connect_bd_net -net andgate_3_d [get_bd_pins andgate_3/d] [get_bd_pins orgate_0/d]
  connect_bd_net -net decoder_0_b [get_bd_pins andgate_1/a] [get_bd_pins andgate_3/a] [get_bd_pins decoder_0/b] [get_bd_pins notgate_0/a]
  connect_bd_net -net decoder_1_b [get_bd_pins andgate_2/c] [get_bd_pins andgate_3/c] [get_bd_pins decoder_1/b] [get_bd_pins notgate_1/a]
  connect_bd_net -net notgate_0_b [get_bd_pins andgate_0/a] [get_bd_pins andgate_2/a] [get_bd_pins notgate_0/b]
  connect_bd_net -net notgate_1_b [get_bd_pins andgate_0/c] [get_bd_pins andgate_1/c] [get_bd_pins notgate_1/b]
  connect_bd_net -net orgate_0_e [get_bd_ports f] [get_bd_pins orgate_0/e]
  connect_bd_net -net s0_1 [get_bd_ports s0] [get_bd_pins decoder_0/a]
  connect_bd_net -net s1_1 [get_bd_ports s1] [get_bd_pins decoder_1/a]
  connect_bd_net -net w0_1 [get_bd_ports w0] [get_bd_pins andgate_0/b]
  connect_bd_net -net w1_1 [get_bd_ports w1] [get_bd_pins andgate_1/b]
  connect_bd_net -net w2_1 [get_bd_ports w2] [get_bd_pins andgate_2/b]
  connect_bd_net -net w3_1 [get_bd_ports w3] [get_bd_pins andgate_3/b]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


