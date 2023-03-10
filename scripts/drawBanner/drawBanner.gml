function drawBanner(collider)
{
	if(global.activeBanner=="stretchBanner"){
   var sprite_index_to_draw = sprite_index;
   var image_index_to_draw = 0;
   var target_xscale = 30;
   var target_yscale = 0.5;
   var animation_speed = 45;
   var animation_speedY = 3;

   var unwind = true;
   
if(collider){
drawBannerCollide();
}
if(global.bannerCollide){
	image_index_to_draw = 1;
	shader_set(shdr_dynaDither);
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	
	draw_set_alpha(1);
	draw_sprite_ext(white,0, global.banner_x, global.banner_y, global.banner_xscale_to_draw, global.banner_yscale_to_draw, global.angles[global.rotate], c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	
	draw_set_alpha(1);
	draw_sprite_ext(white,0, global.banner_x, global.banner_y, global.banner_xscale_to_draw, global.banner_yscale_to_draw, global.angles[global.rotate], c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(dotted, 0, mouse_x-22, global.banner_y, 2, 2
	, -global.angles[global.rotate], c_white, 0.5);
	draw_sprite_ext(floralpattern, 0, global.banner_x, global.banner_y, 1, 1, global.angles[global.rotate], c_white, 0.25);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);


}else{
shader_reset();
}

      if (mouse_check_button_pressed(mb_left) && global.bannerCollide && collider) {
         global.rotate = (global.rotate + 1) % array_length(global.angles);
		 global.banner_yscale_to_draw = 1;
         unwind = false;
		 story.alarm[0] = 60;
		 strobeController.alarm[0] = 20;
         global.storyStep++;
		 if(!global.audioPause){
		 if (global.audioTrack1)
		 {
			 audio_play_sound(global.track1, 0, 1, 1)
		  }else{
			  audio_stop_sound(global.track1)
		  }
		 if (global.audioTrack2)
		 {
			 audio_play_sound(global.track2, 0, 1, 1)
		  }else{
			  audio_stop_sound(global.track2)
		  }
		 }
		 if(nextFlicker == true){
		 obj_sprite.flicker = global.flickerTime
		 }
		 playPiano();
      }

   if(global.activeBanner == "stretchBanner"){
      if (unwind == false) {
         global.banner_xscale_to_draw = 1;
         target_xscale = 1;
      }

      // calculate the new xscale based on elapsed time since the last frame
      var elapsed_time = delta_time / 1000000; // convert delta_time to seconds
      var xscale_delta = elapsed_time * animation_speed;
      if (global.banner_xscale_to_draw < target_xscale && unwind == true) {
         global.banner_xscale_to_draw += xscale_delta;
         global.banner_xscale_to_draw = min(target_xscale, global.banner_xscale_to_draw);
      }

      // calculate the new yscale based on elapsed time since the last frame
      var elapsed_time = delta_time / 1000000; // convert delta_time to seconds
      var yscale_delta = elapsed_time * animation_speedY;
      if (global.bannerCollide) {
         if (global.banner_yscale_to_draw > target_yscale) {
            global.banner_yscale_to_draw -= yscale_delta;
            global.banner_yscale_to_draw = max(target_yscale, global.banner_yscale_to_draw);
         }
      } else {
         if (global.banner_yscale_to_draw < 1) {
            global.banner_yscale_to_draw += yscale_delta;
            global.banner_yscale_to_draw = min(1, global.banner_yscale_to_draw);
         }
      }

	  sprite_index = sprite_index_to_draw;
	  image_index = image_index_to_draw
	  x = global.banner_x
	  y = global.banner_y
	  image_xscale = global.banner_xscale_to_draw
	  if(collider==false){
	  image_yscale = global.banner_yscale_to_draw
	  }
	  image_angle = global.angles[global.rotate]
	  
   }
	}
}
