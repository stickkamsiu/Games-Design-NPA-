//Global music score
global.musicVolume = 1;

//Music Variables
songInstance = noone;
songAsset = noone;
songTargetAsset = noone;
endFadeOutTime = 0;
startFadeInTime = 0;
fadeInVolume = 1;

//Fading out songs lol
fadeOutInstances = array_create(0);
fadeOutInstanceVol = array_create(0);
fadeOutInstanceTime = array_create(0);