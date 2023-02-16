

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