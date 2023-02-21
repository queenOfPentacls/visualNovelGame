/// @description Insert description here
// You can write your code in this editor
sprite_index = scissor;
image_xscale = 0.15;
image_yscale = 0.15;
image_speed = 0;

if((global.bannerCollide || global.collide1 || global.collide2) && !clicked){
 hover = true	
}else{
 hover = false
}

if(hover && !loopone){
	if(image_index == 4){
	image_index = 4;	
	}else{
	image_index--
	}
}
if(!hover && !loopone){
	if(image_index == 7){
	image_index = 7;	
	}else{
	image_index++
	}
}
if(!hover && loopone){
	if(image_index == 9){
	image_index = 7;
	loopone = false
	}else{
	image_index++
	}
}
if(hover && loopone){
	if(image_index == 5){
	image_index = 4;
	loopone = false
	}else{
	image_index++
	}
}



draw_self();