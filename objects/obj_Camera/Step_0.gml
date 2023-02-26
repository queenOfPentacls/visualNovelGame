if(live_call()) return live_result;
     var xTo, yTo;


     move_towards_point(mouse_x, mouse_y, 0);
	 
	 var xPan = 32;
	 var yPan = mouse_y > y ? 8 : 48;

     xTo = obj_Anchor.x + lengthdir_x(min(xPan, distance_to_point(mouse_x, mouse_y)), direction);
     yTo = obj_Anchor.y + lengthdir_y(min(yPan, distance_to_point(mouse_x, mouse_y)), direction);



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