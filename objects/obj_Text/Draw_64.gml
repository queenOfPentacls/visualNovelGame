

if(global.activeBanner == "stretchBanner"){
	draw_text_transformed(global.banner_x, global.banner_y, global.bannerDialogue, 1, 1, global.angles[global.rotate]);
		if(global.bannerCollide){
			draw_set_colour(c_white);
			}else{
			draw_set_colour(c_black);
			}
}