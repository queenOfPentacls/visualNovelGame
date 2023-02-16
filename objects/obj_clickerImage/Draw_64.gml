


if(global.drawClicker){
	sprite_index = global.clickerImage;
    x = global.clickerX;
    y = global.clickerY;
	image_xscale = global.clickerXSCALE;
	image_yscale = global.clickerYSCALE;
    if (position_meeting(mouse_x, mouse_y, self)) {
gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
gpu_set_blendmode(bm_normal);
draw_self();
gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
gpu_set_blendmode(bm_normal);
    }
	    if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left)) {
			global.storyStep++
			story.alarm[0] = 60;
			global.drawClicker = false;
			obj_clickerImage.visible = false;
		}
}
