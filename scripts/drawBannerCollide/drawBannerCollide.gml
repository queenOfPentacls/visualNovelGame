// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawBannerCollide(){
	image_alpha = 0;
	if (position_meeting(mouse_x, mouse_y, self)) {
    global.bannerCollide = true;
} 
else{
	global.bannerCollide = false;
}
}