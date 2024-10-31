/// @description Insert description here
// You can write your code in this editor

//HP
//draw_text(100, 100, "Score: " + string(playerScore));
//draw_text(100, 150, "Lives: " + string(playerLives));

//If the room is not the game over room, then it draws the sprites.
if room != GameOver then
{
	draw_sprite(sprHealthBarBack, 0, global.healthbar_x, global.healthbar_y);
	draw_sprite_stretched(sprHealth, 0, global.healthbar_x + 12, global.healthbar_y + 10, min((global.hp/global.hp_max) * global.healthbar_width, global.healthbar_width), global.healthbar_height);
	draw_sprite(sprHealthBar, 0, global.healthbar_x, global.healthbar_y);


	if global.flash != 0 then
	{
		//Will draw an X_X sprite if the flash is not 0 (REAL)
		draw_sprite(sprHealthBar, 1, global.healthbar_x, global.healthbar_y);
	}
	else
	{
		draw_sprite(sprHealthBar, 0, global.healthbar_x, global.healthbar_y);
	}
}

