/// @description Insert description here
// You can write your code in this editor

instance_destroy();
effect_create_above(ef_star, x, y, 2, c_white);
audio_play_sound(sndCherry, 1, false);
objControl.playerScore += 10;
cherrycount -= 1;

