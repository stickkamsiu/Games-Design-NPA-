/// Music stuff that allows the music to fade in and out.

var _finalVol = global.musicVolume;

if songAsset != songTargetAsset
{
	//FADE OUT OLD SONG
	if audio_is_playing( songInstance )
	{
		//Add song instance to array that we want to fade out
		array_push( fadeOutInstances, songInstance );
		
		//No abrupt change in volume
		array_push( fadeOutInstanceVol, fadeInVolume );
		
		//add fade out frame instance
		array_push( fadeOutInstanceTime, endFadeOutTime);
		
		//reset values
		songInstance = noone;
		songAsset = noone;
	}
	if array_length( fadeOutInstances ) == 0
	{
		if audio_exists( songTargetAsset )
		{
			songInstance = audio_play_sound(songTargetAsset, 4, true);
			audio_sound_gain(songInstance, 0, 0);
	
			fadeInVolume = 0;
		}
	}
	
	//Song asset = Targetted song
	songAsset = songTargetAsset
}




//Volume Control
if audio_is_playing(songInstance)
{
	if startFadeInTime > 0
	{
		if fadeInVolume < 1 {fadeInVolume += 1/startFadeInTime;} else {fadeInVolume = 1;}
	}
	else
	{
		fadeInVolume = 1;
	}
	
	audio_sound_gain(songInstance, fadeInVolume*_finalVol, 0);
}

for (var i = 0; i < array_length( fadeOutInstanceTime); i++ )
{
	if fadeOutInstanceTime[i] > 0
	{
		if fadeOutInstanceVol[i] > 0 {fadeOutInstanceVol[i] -= 1/fadeOutInstanceTime[i];}
	}
	else
	{
		fadeOutInstanceTime[i] = 0;
	}
	
	audio_sound_gain( fadeOutInstances[i], fadeOutInstanceVol[i]*_finalVol, 0 )
	
	
	if fadeOutInstanceVol[i] <= 0
	{
		if audio_is_playing(fadeOutInstances[i]) {audio_stop_sound(fadeOutInstances[i]); }
		array_delete( fadeOutInstances, i, 1);
		array_delete( fadeOutInstanceVol, i, 1);
		array_delete( fadeOutInstanceTime, i, 1);
		i--;
	}
	
}