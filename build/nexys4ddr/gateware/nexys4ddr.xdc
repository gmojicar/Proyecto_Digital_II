################################################################################
# IO constraints
################################################################################
# serial:0.tx
set_property LOC D4 [get_ports {serial_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_tx}]

# serial:0.rx
set_property LOC C4 [get_ports {serial_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_rx}]

# clk:0
set_property LOC E3 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

# cpu_reset:0
set_property LOC C12 [get_ports {cpu_reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {cpu_reset}]

# servo:0
set_property LOC B13 [get_ports {servo}]
set_property IOSTANDARD LVCMOS33 [get_ports {servo}]

# trig:0
set_property LOC F14 [get_ports {trig}]
set_property IOSTANDARD LVCMOS33 [get_ports {trig}]

# echo:0
set_property LOC D17 [get_ports {echo}]
set_property IOSTANDARD LVCMOS33 [get_ports {echo}]

# infras:0
set_property LOC E17 [get_ports {infras0}]
set_property IOSTANDARD LVCMOS33 [get_ports {infras0}]

# infras:1
set_property LOC G13 [get_ports {infras1}]
set_property IOSTANDARD LVCMOS33 [get_ports {infras1}]

# infras:2
set_property LOC C17 [get_ports {infras2}]
set_property IOSTANDARD LVCMOS33 [get_ports {infras2}]

# infras:3
set_property LOC D18 [get_ports {infras3}]
set_property IOSTANDARD LVCMOS33 [get_ports {infras3}]

# infras:4
set_property LOC E18 [get_ports {infras4}]
set_property IOSTANDARD LVCMOS33 [get_ports {infras4}]

# right:0
set_property LOC V11 [get_ports {right0}]
set_property IOSTANDARD LVCMOS33 [get_ports {right0}]

# right:1
set_property LOC V15 [get_ports {right1}]
set_property IOSTANDARD LVCMOS33 [get_ports {right1}]

# left:0
set_property LOC K16 [get_ports {left0}]
set_property IOSTANDARD LVCMOS33 [get_ports {left0}]

# left:1
set_property LOC R16 [get_ports {left1}]
set_property IOSTANDARD LVCMOS33 [get_ports {left1}]

# i2c0:0.sda
set_property LOC T9 [get_ports {i2c0_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {i2c0_sda}]

# i2c0:0.scl
set_property LOC U11 [get_ports {i2c0_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {i2c0_scl}]

# Aclock:0
set_property LOC P15 [get_ports {Aclock0}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aclock0}]

# vsync:0
set_property LOC B12 [get_ports {vsync0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vsync0}]

# hsync:0
set_property LOC B11 [get_ports {hsync0}]
set_property IOSTANDARD LVCMOS33 [get_ports {hsync0}]

# vga:0
set_property LOC A3 [get_ports {vga0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga0}]

# vga:1
set_property LOC B4 [get_ports {vga1}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga1}]

# vga:2
set_property LOC C5 [get_ports {vga2}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga2}]

# vga:3
set_property LOC A4 [get_ports {vga3}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga3}]

# vga:4
set_property LOC C6 [get_ports {vga4}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga4}]

# vga:5
set_property LOC A5 [get_ports {vga5}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga5}]

# vga:6
set_property LOC B6 [get_ports {vga6}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga6}]

# vga:7
set_property LOC A6 [get_ports {vga7}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga7}]

# vga:8
set_property LOC B7 [get_ports {vga8}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga8}]

# vga:9
set_property LOC C7 [get_ports {vga9}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga9}]

# vga:10
set_property LOC D7 [get_ports {vga10}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga10}]

# vga:11
set_property LOC D8 [get_ports {vga11}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga11}]

# XClock:0
set_property LOC G1 [get_ports {XClock0}]
set_property IOSTANDARD LVCMOS33 [get_ports {XClock0}]

# Data:0
set_property LOC J3 [get_ports {Data0}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data0}]

# Data:1
set_property LOC J2 [get_ports {Data1}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data1}]

# Data:2
set_property LOC J4 [get_ports {Data2}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data2}]

# Data:3
set_property LOC G6 [get_ports {Data3}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data3}]

# Data:4
set_property LOC H4 [get_ports {Data4}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data4}]

# Data:5
set_property LOC H2 [get_ports {Data5}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data5}]

# Data:6
set_property LOC H1 [get_ports {Data6}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data6}]

# Data:7
set_property LOC G4 [get_ports {Data7}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data7}]

# Vsync_cam:0
set_property LOC G2 [get_ports {Vsync_cam0}]
set_property IOSTANDARD LVCMOS33 [get_ports {Vsync_cam0}]

# Href:0
set_property LOC G3 [get_ports {Href0}]
set_property IOSTANDARD LVCMOS33 [get_ports {Href0}]

# Forma:0
set_property LOC T8 [get_ports {Forma0}]
set_property IOSTANDARD LVCMOS33 [get_ports {Forma0}]

# PromedioColor:0
set_property LOC T5 [get_ports {PromedioColor0}]
set_property IOSTANDARD LVCMOS33 [get_ports {PromedioColor0}]

################################################################################
# Design constraints
################################################################################

set_property INTERNAL_VREF 0.750 [get_iobanks 34]

################################################################################
# Clock constraints
################################################################################


################################################################################
# False path constraints
################################################################################


set_false_path -quiet -through [get_nets -hierarchical -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -filter {REF_PIN_NAME == PRE} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -filter {REF_PIN_NAME == C} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE}]] -to [get_pins -filter {REF_PIN_NAME == D} -of_objects [get_cells -hierarchical -filter {ars_ff2 == TRUE}]]