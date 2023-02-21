// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function strobe(color){
 if(alarm[0] != -1){
  draw_sprite_stretched_ext(white, -1, 0, 0, room_width,room_height, c_white, 1);
 }else{
 draw_sprite_stretched_ext(white, -1, 0, 0, room_width,room_height, c_white, 0);
 }
}