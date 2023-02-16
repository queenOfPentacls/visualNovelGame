

function setBackground(image){
	if(image != "kill"){
		global.drawBackground = true;
		global.setBackground = image;
	}else{
		global.drawBackground = false;
	}

}