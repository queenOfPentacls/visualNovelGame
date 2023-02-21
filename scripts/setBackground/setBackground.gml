

function setBackground(image){
	if (image == last_image) exit;
	else{
		last_image = image;
		
		if(image == "kill"){
			global.drawBackground = false;
			global.drawVideo = false;
		}
		else if(is_string(image) && (string_count("mp4", image) || string_count("webm", image))){
			//if(background.videoLoaded){ video_close(); }
			background.videoLoaded = false;
			global.drawBackground = true;
			global.drawVideo = true;
			global.setVideo = image;
		}
		else{
			global.drawBackground = true;
			global.setBackground = image;
			global.drawVideo = false;
		}
	}
}