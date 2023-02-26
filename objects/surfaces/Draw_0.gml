if(surface_exists(background_surface)){
	//shader_set(shdr_dynaDither);
	draw_surface_general(background_surface, 0, 0, camW, camH, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	//shader_reset();
}
else background_surface = surface_create(camW, camH);

if(surface_exists(sprite_surface)){
	//shader_set(shdr_dynaDither);
	draw_surface_general(sprite_surface, 0, 0, camW, camH, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	//shader_reset();
}
else sprite_surface = surface_create(camW, camH);

