if(live_call()) return live_result;

if(global.activeBanner == "stretchBanner"){
	draw_set_font(font_dialogue);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	//reveal text with "typewriter" effect
	if(t < len) t += typeSpd;
	
	var angle = global.angles[global.rotate];
	var charW = string_width("A"); //get width of one character
	var txtX = global.banner_x - ((floor(t) * charW) / 2); //position text at center (replace "floor(t)" with just "t" to smoothen the type animation)
	var txtY = global.banner_y + (dtan(angle) * (string_width(str)/1.5)); //center text vertically using trig
	
	shader_set(shdr_dynaDither);
	for(i = 0; i < floor(t); i++){
		var angleYOffset = dtan(angle) * (charW * i); //use trig to get Y offset to draw at appropriate angle
		draw_text_transformed(txtX + txtXOff[i] + (charW * i), txtY + txtYOff[i] - angleYOffset, char[i], 1, 1, angle);
	}
	shader_reset();
	
	text_effects_controller();	
	
	if(global.bannerCollide){
		draw_set_colour(c_white);
	}else{
		draw_set_colour(c_black);
	}
}