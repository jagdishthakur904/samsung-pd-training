set my_list [list sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4b_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__and4bb_4 ]

#For each cell in list, find the output pin name and its functionality

foreach my_cell $my_list {
	foreach_in_collection my_lib_pin [get_lib_pins ${my_cell}/*] {
		set my_lib_pin_name [get_object_name $my_lib_pin];
		set dir [get_lib_attribute $my_lib_pin_name direction];
		if {$dir == 2 } {
			set fun [get_lib_attribute $my_lib_pin_name function];
			echo $my_lib_pin_name $dir $fun;
		}
	}
}
