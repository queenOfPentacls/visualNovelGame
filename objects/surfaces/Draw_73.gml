if(surface_exists(text_surface)){
	
	//shader_set(shdr_dynaDither);
	draw_surface_general(text_surface, 0, 0, camW, camH, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	//shader_reset();
	surface_set_target(text_surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
else text_surface = surface_create(camW, camH);