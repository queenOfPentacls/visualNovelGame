if(global.drawBackground){
	draw_sprite_stretched(global.setBackground, -1, 0, 0, room_width,room_height);
	image_speed = 0.25
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