if(alarm[1] == -1 && !stopAlarm){
alarm[1] = transitionTime
global.storyStep++
}
if(alarm[0] == -1 && stopAlarm){
alarm[1] = -1
}

storySteps();

