# Clock signal and Reset Button
set_property PACKAGE_PIN W5 [get_ports clock_100]       
 set_property IOSTANDARD LVCMOS33 [get_ports clock_100]
set_property PACKAGE_PIN V17 [get_ports reset]     
        set_property IOSTANDARD LVCMOS33 [get_ports reset]


#7 segment display
set_property PACKAGE_PIN W7 [get_ports {led_out_final[6]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[6]}]
set_property PACKAGE_PIN W6 [get_ports {led_out_final[5]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[5]}]
set_property PACKAGE_PIN U8 [get_ports {led_out_final[4]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[4]}]
set_property PACKAGE_PIN V8 [get_ports {led_out_final[3]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[3]}]
set_property PACKAGE_PIN U5 [get_ports {led_out_final[2]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[2]}]
set_property PACKAGE_PIN V5 [get_ports {led_out_final[1]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[1]}]
set_property PACKAGE_PIN U7 [get_ports {led_out_final[0]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {led_out_final[0]}]
   
set_property PACKAGE_PIN U2 [get_ports {anode_activated[3]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {anode_activated[3]}]
set_property PACKAGE_PIN U4 [get_ports {anode_activated[2]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {anode_activated[2]}]
set_property PACKAGE_PIN V4 [get_ports {anode_activated[1]}]               
   set_property IOSTANDARD LVCMOS33 [get_ports {anode_activated[1]}]
set_property PACKAGE_PIN W4 [get_ports {anode_activated[0]}]          
   set_property IOSTANDARD LVCMOS33 [get_ports {anode_activated[0]}]