/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndPlayerPop, 1, false);
effect_create_above(ef_firework, x, y, 1, c_red);

objControl.playerLives -= 1;
if (objControl.playerLives == 0)
{
	room_goto(GameOver)
}
else
{
	instance_create_layer(537, 132, "instances", objPlayer);
}