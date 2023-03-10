/// @description Insert description here
// You can write your code in this editor
if(live_call()) return live_result;

if(global.activeBanner == "choice"){
	draw_set_font(font_dialogue);
	
	txtColor = obj_choice2.collide ? c_white : c_black;
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	
	//reveal text with "typewriter" effect
	if(t < len) t += typeSpd;
	
	var angle = global.angles[global.rotate];
	var charW = string_width("A"); //get width of one character
	
	var txtX2 = obj_choice2.x - ((floor(t) * charW) / 2); //position text at center (replace "floor(t)" with just "t" to smoothen the type animation)
	var txtY2 = obj_choice2.y + (dtan(angle) * (string_width(str2)/1.5)); //center text vertically using trig
	
	
	//draw letters one at a time 
	shader_set(shdr_dynaDither);
	for(i = 0; i < floor(t); i++){
		if(t<len && !obj_sprite.flicker && global.voxOn && !audio_is_playing(asset_get_index(string_lower(char[i])+"vox"))) {
			if(audio_exists(asset_get_index(string_lower(char[i])+"vox"))){
			audio_play_sound(asset_get_index(string_lower(char[i])+"vox"), 1, 0, 0.1, 0, 1.5)
			}
			if(!audio_is_playing(cut) && !audio_is_playing(asset_get_index(string_lower(char[i])+"vox"))){
			audio_play_sound(cut, 1, 0, 0.1, 0, 1)
			}
	}
		var angleYOffset = dtan(angle) * (charW * i); //use trig to get Y offset to draw at appropriate angle
		if(alpha[i] < 1) alpha[i] += 0.1; //fade letters in
		draw_text_transformed_color(txtX2 + txtXOff[i] + (charW * i), txtY2 + txtYOff[i] - angleYOffset, char[i], 1, 1, angle, txtColor, txtColor, txtColor, txtColor, alpha[i]);
	}	
	shader_reset();
	
}
