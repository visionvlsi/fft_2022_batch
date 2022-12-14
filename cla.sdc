create_clock -period 100 -name clk
set_input_delay 0 -min -rise [get_ports din_r*] -clock clk
set_input_delay 0 -min -fall [get_ports din_r*] -clock clk
set_input_delay 0 -max -rise [get_ports din_r*] -clock clk
set_input_delay 0 -max -fall [get_ports din_r*] -clock clk
set_input_transition 1.5 -min -rise [get_ports din_r*] 
set_input_transition 1.5 -min -fall [get_ports din_r*]
set_input_transition 1.5 -max -rise [get_ports din_r*]
set_input_transition 1.5 -max -fall [get_ports din_r*]
set_input_delay 0 -min -rise [get_ports din_i*] -clock clk
set_input_delay 0 -min -fall [get_ports din_i*] -clock clk
set_input_delay 0 -max -rise [get_ports din_i*] -clock clk
set_input_delay 0 -max -fall [get_ports din_i*] -clock clk
set_input_transition 1.5 -min -rise [get_ports din_i*]
set_input_transition 1.5 -min -fall [get_ports din_i*]
set_input_transition 1.5 -max -rise [get_ports din_i*]
set_input_transition 1.5 -max -fall [get_ports din_i*]
set_output_delay -9 -min -rise [get_ports dout_r*] -clock clk
set_output_delay -9 -min -fall [get_ports dout_r*] -clock clk
set_output_delay 40 -max -rise [get_ports dout_r*] -clock clk
set_output_delay 40 -max -fall [get_ports dout_r*] -clock clk
set_load -pin_load 4 [get_ports dout_r*]
set_output_delay -9 -min -rise [get_ports dout_i] -clock clk
set_output_delay -9 -min -fall [get_ports dout_i] -clock clk
set_output_delay 40 -max -rise [get_ports dout_i] -clock clk
set_output_delay 40 -max -fall [get_ports dout_i] -clock clk
set_load -pin_load 4 [get_ports dout_i]
