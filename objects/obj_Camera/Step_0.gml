
     var xTo, yTo;


     move_towards_point(window_mouse_get_x(), window_mouse_get_y(), 0);

     xTo = obj_Anchor.x + lengthdir_x(min(32, distance_to_point(window_mouse_get_x(), window_mouse_get_y())), direction);
     yTo = obj_Anchor.y + lengthdir_y(min(32, distance_to_point(mouse_x, mouse_y)), direction);



     x += (xTo - x) / 25;

     y += (yTo - y) / 25;


	if(global.screenshake){
		var shakeAmount = global.screenshake;
		var shakeDecay  = 2;
		screenshake_x = random_range(shakeAmount/shakeDecay, -shakeAmount/shakeDecay);
		screenshake_y = random_range(shakeAmount/shakeDecay, -shakeAmount/shakeDecay);
		
		global.screenshake--;
	}


     camX = -(camW / 2) + x + screenshake_x;

     camY = -(camH / 2) + y + screenshake_y;



     camX = clamp(camX, 0, room_width-camW);

     camY = clamp(camY, 0, room_height-camH);


     camera_set_view_pos(view_camera[0], camX, camY);