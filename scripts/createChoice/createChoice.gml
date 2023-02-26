// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createChoice(choice1, choice1x, choice1y, choice1xscale, choice1yscale, choice2, choice2x, choice2y, choice2xscale, choice2yscale){
global.bannerCollide = false;
obj_choice1.dialogue = choice1;
obj_choice1.x = choice1x;
obj_choice1.y = choice1y;
obj_choice1.image_xscale = choice1xscale;
obj_choice1.image_yscale = choice1yscale;

obj_choice2.dialogue = choice2;
obj_choice2.x = choice2x;
obj_choice2.y = choice2y;
obj_choice2.image_xscale = choice2xscale;
obj_choice2.image_yscale = choice2yscale;
}