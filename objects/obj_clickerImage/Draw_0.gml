/// @description Insert description here
// You can write your code in this editor


if(global.drawClicker){
	sprite_index = global.clickerImage;
    x = global.clickerX;
    y = global.clickerY;
	image_xscale = global.clickerXSCALE;
	image_yscale = global.clickerYSCALE;
	draw_self();
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
			audio_play_sound(chime, 10, 0)
			global.storyStep++
			global.drawClicker = false;
			obj_clickerImage.visible = false;
		}
}
