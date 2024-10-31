/// @description Insert description here
// You can write your code in this editor

y += ballSpeed * ballDirection;

if (place_meeting(x, y, ObjBrickWalls))
{
	ballDirection *= -1;
}

