/// @description Insert description here
// You can write your code in this editor
     var xTo, yTo;


     move_towards_point(window_mouse_get_x(), window_mouse_get_y(), 0);

     xTo = obj_Anchor.x + lengthdir_x(min(32, distance_to_point(window_mouse_get_x(), window_mouse_get_y())), direction);
     yTo = obj_Anchor.y + lengthdir_y(min(32, distance_to_point(mouse_x, mouse_y)), direction);



     x += (xTo - x) / 25;

     y += (yTo - y) / 25;





     camX = -(camera_get_view_width(view_camera[0]) / 2) + x;

     camY = -(camera_get_view_height(view_camera[0]) / 2) + y;



     camX = clamp(camX, 0, room_width-camera_get_view_width(view_camera[0]));

     camY = clamp(camY, 0, room_height-camera_get_view_height(view_camera[0]));


	 show_debug_message(mouse_y);
     camera_set_view_pos(view_camera[0], camX, camY);