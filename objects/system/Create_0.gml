game_set_speed(60, gamespeed_fps);
time = 0;
debugmode = true;

//left/right macros
#macro L 0
#macro R 1

#macro delta delta_time / 1000000 // Convert delta time to seconds

global.screenshake = 0;

//view dimension macros -- if the width/height needs to be dynamic later on, change these to global variables
#macro camW camera_get_view_width(view_camera[0])
#macro camH camera_get_view_height(view_camera[0])