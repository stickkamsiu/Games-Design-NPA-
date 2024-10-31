/// DESTROY (Keeping off)

//Death sounds go crazy also deleting player causes many errors soooooo-
audio_play_sound(sndPlayerPop, 1, false);
effect_create_above(ef_firework, x, y, 1, c_red);
instance_create_layer(537, 132, "Instances", objPlayer9);


//ignore this.

/*objControl.playerLives -= 1;
if (objControl.playerLives == 0)
{
	room_goto(GameOver)
}
else
{
	instance_create_layer(537, 132, "instances", objPlayer9);
	
}*/