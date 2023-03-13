if(alarm[1] == -1 && !stopAlarm){
alarm[1] = transitionTime
global.storyStep++
}
if(alarm[0] == -1 && stopAlarm){
alarm[1] = -1
}

storySteps();

show_debug_message(global.setBackground);
show_debug_message(background.image_index);
show_debug_message(global.storyStep);