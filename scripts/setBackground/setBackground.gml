

function setBackground(image, minIndex, maxIndex){
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
            if(image != global.setBackground){
				background.image_index = 0;
				global.setBackground = image;
			}
			global.drawBackground = true;
			global.drawVideo = false;
			background.minIndex = minIndex;
			background.maxIndex = maxIndex;
		}
	}