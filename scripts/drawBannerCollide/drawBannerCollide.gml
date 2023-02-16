

function drawBannerCollide(){
	image_alpha = 0;
	if (position_meeting(mouse_x, mouse_y, self)) {
    global.bannerCollide = true;
} 
else{
	global.bannerCollide = false;
}
}