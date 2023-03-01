// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playPiano(){
if(global.bannerSound == "piano"){
piano_sound=irandom(7);
sound = "piano" + string(piano_sound);
piano = asset_get_index(sound);
audio_play_sound(piano, global.storyStep, 0, 1, 1)
}
if(global.bannerSound == "horn"){
audio_play_sound(horn0, global.storyStep, 0, 0.5, 1)
}
if(global.bannerSound == "kill"){
audio_stop_sound(piano)
audio_stop_sound(horn0)
return;
}
}