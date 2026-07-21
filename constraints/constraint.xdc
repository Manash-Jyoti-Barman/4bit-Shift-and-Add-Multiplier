#Timing Constrats
create_clock -name clk -period 15.000 [get_ports clk]
set_property PACKAGE_PIN Y9 [get_ports clk]

set_input_delay -clock clk -min 1.000 [get_ports {bin[*]}]
set_input_delay -clock clk -max 3.000 [get_ports {bin[*]}]

set_input_delay -clock clk -min 1.000 [get_ports {ain[*]}]
set_input_delay -clock clk -max 3.000 [get_ports {ain[*]}]

set_input_delay -clock clk -min 1.000 [get_ports start]
set_input_delay -clock clk -max 3.000 [get_ports start]

set_output_delay -clock clk -min 1.0 [get_ports {product[*]}]
set_output_delay -clock clk -max 3.0 [get_ports {product[*]}]

set_output_delay -clock clk -min 1.0 [get_ports done]
set_output_delay -clock clk -max 3.0 [get_ports done]

#zedboard
# User DIP Switches - Bank 35
set_property PACKAGE_PIN F22 [get_ports {ain[0]}]
set_property PACKAGE_PIN G22 [get_ports {ain[1]}]
set_property PACKAGE_PIN H22 [get_ports {ain[2]}]
set_property PACKAGE_PIN F21 [get_ports {ain[3]}]
set_property PACKAGE_PIN H19 [get_ports {bin[0]}]
set_property PACKAGE_PIN H18 [get_ports {bin[1]}]
set_property PACKAGE_PIN H17 [get_ports {bin[2]}]
set_property PACKAGE_PIN M15 [get_ports {bin[3]}]
                                          
# User LEDs - Bank 33
set_property PACKAGE_PIN T22 [get_ports {product[0]}]
set_property PACKAGE_PIN T21 [get_ports {product[1]}]
set_property PACKAGE_PIN U22 [get_ports {product[2]}]
set_property PACKAGE_PIN U21 [get_ports {product[3]}]
set_property PACKAGE_PIN V22 [get_ports {product[4]}]
set_property PACKAGE_PIN W22 [get_ports {product[5]}]
set_property PACKAGE_PIN U19 [get_ports {product[6]}]
set_property PACKAGE_PIN U14 [get_ports {product[7]}]

# User Push Buttons - Bank 34
set_property PACKAGE_PIN P16 [get_ports {start}];

set_property PACKAGE_PIN Y11 [get_ports done]

#I/O standards
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports start]
set_property IOSTANDARD LVCMOS33 [get_ports {ain[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {bin[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {product[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports done]