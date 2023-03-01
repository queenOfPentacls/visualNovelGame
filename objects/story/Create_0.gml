

global.storyStep = -2;
global.rotate = 0;
global.bannerCollide = false;
global.angles = [0, 5, -3, 4, -1];
global.banner_xscale_to_draw = 1;
global.banner_yscale_to_draw = 1;
global.banner_x = room_width/2;
global.banner_y = room_height/1.15;
global.drawBackground = true;
global.drawVideo = false;
global.activeBanner = undefined;


global.spriteRA = 0;
global.spriteLA = 0;

global.voxOn = true;

global.audioTrack1 = false
global.audioTrack2 = false
global.track1 = rain
global.track2 = rain

window_set_cursor(cr_none);

global.innerStep = 0;

global.drawChoice = false;

global.collide = false;

global.collide1 = false;
global.collide2 = false;


last_image = undefined;

global.flickerTime = 120;
global.voxPitch = 1.5;


var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, 0.25);

stopAlarm = false;
transitionTime = 400;
alarm[1] = transitionTime;

global.drawClicker = false;
global.bannerSound = "piano"