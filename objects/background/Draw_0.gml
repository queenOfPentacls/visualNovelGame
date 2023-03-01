if(global.drawBackground){
	image_index = clamp(image_index, minIndex, maxIndex)
	if(image_index == maxIndex){
		if(loop == 0){
		image_speed = 0
	}
	if(loop == 1){
	image_index = minIndex;
	}
	if(loop == 2){
		global.storyStep++
	}
	}
	draw_sprite_stretched(global.setBackground, image_index, 0, 0, room_width,room_height);
	
}

if(global.drawVideo){
	if(!videoLoaded){
		if(video_get_status() == video_status_playing || video_get_status() == video_status_preparing){
			video_close();
		}
		else{
			video = video_open(global.setVideo);
			video_enable_loop(true);
			videoLoaded = true;
		}
	}
	else{
		var videoData = video_draw();
		var videoStatus = videoData[0];
		if(videoStatus == 0){
			draw_surface(videoData[1], 0, 0);
		}
	}
}
else{
	if(videoLoaded){
		video_close();
		videoLoaded = false;
	}
}