set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.00 [get_ports clk]

# reset
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# opcode 7bits
set_property PACKAGE_PIN V17 [get_ports {opcode_sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {opcode_sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {opcode_sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {opcode_sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {opcode_sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {opcode_sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {opcode_sw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {opcode_sw[*]}]

# funct3 3bits
set_property PACKAGE_PIN W13 [get_ports {funct3_sw[0]}]
set_property PACKAGE_PIN V2 [get_ports {funct3_sw[1]}]
set_property PACKAGE_PIN T3 [get_ports {funct3_sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {funct3_sw[*]}]

# funct7 1bit
set_property PACKAGE_PIN T2 [get_ports funct7_sw]
set_property IOSTANDARD LVCMOS33 [get_ports funct7_sw]

# leds
set_property PACKAGE_PIN U16 [get_ports {LEDs[0]}]
set_property PACKAGE_PIN E19 [get_ports {LEDs[1]}]
set_property PACKAGE_PIN U19 [get_ports {LEDs[2]}]
set_property PACKAGE_PIN V19 [get_ports {LEDs[3]}]
set_property PACKAGE_PIN W18 [get_ports {LEDs[4]}]
set_property PACKAGE_PIN U15 [get_ports {LEDs[5]}]
set_property PACKAGE_PIN U14 [get_ports {LEDs[6]}]
set_property PACKAGE_PIN V14 [get_ports {LEDs[7]}]
set_property PACKAGE_PIN V13 [get_ports {LEDs[8]}]
set_property PACKAGE_PIN V3 [get_ports {LEDs[9]}]
set_property PACKAGE_PIN W3 [get_ports {LEDs[10]}]
set_property PACKAGE_PIN U3 [get_ports {LEDs[11]}]
set_property PACKAGE_PIN P3 [get_ports {LEDs[12]}]
set_property PACKAGE_PIN N3 [get_ports {LEDs[13]}]
set_property PACKAGE_PIN P1 [get_ports {LEDs[14]}]
set_property PACKAGE_PIN L1 [get_ports {LEDs[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[*]}]