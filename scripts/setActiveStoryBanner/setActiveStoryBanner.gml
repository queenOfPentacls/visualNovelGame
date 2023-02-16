// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setActiveStoryBanner(banner){
	if(banner == "stretchBanner"){
		global.activeBanner = "stretchBanner";
	}
	if(banner == "kill"){
	    obj_collisionBanner.visible = false;
		obj_banner.visible = false;
		obj_Text.visible = false;
	}else{
		return true;
	}
	

}