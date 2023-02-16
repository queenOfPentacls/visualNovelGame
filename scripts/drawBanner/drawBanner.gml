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
}

      if (mouse_check_button_pressed(mb_left) && global.bannerCollide && collider) {
         global.rotate = (global.rotate + 1) % array_length(global.angles);
		 global.banner_yscale_to_draw = 1;
         unwind = false;
		 story.alarm[0] = 60;
         global.storyStep++;
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
