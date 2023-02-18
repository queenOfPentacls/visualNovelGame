// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playPiano(){
piano_sound=irandom(7);
sound = "piano" + string(piano_sound);
audio_play_sound(asset_get_index(sound), global.storyStep, 0, 1, 1)
show_debug_message(sound)
}