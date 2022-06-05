// Scale the window size up by the largest factor while still
// remaining smaller than the user's display

disp_width = display_get_width();
disp_height = display_get_height();

curr_width = room_width;
curr_height = room_height;

scaling_factor = 1;

while (true) {
	
	if (curr_width * 2 < disp_width && curr_height * 2 < disp_height) {
		
		curr_width *= 2;
		curr_height *= 2;
		scaling_factor++;
		
	} else {
		
		break;
	}
}
window_set_size(room_width * scaling_factor, room_height * scaling_factor);