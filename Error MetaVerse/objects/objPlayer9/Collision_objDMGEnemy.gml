/// HP Jumpscare
//Also, collision  with a parent object means collision with a children object. Sweet.
if global.flash == 0 then
{
	flash = 15;
	global.hp = global.hp - 5;
	effect_create_above(ef_firework, objPlayer9.x, objPlayer9.y, 1, c_aqua)
	
	//Timing for like... invincible seconds

	//time_source_start(global.timeHP);
	
	global.flash ++;
	//uhh
	time_source_start(global.flashing);
}



if global.hp <= 0 then
{
	instance_destroy();	
	room_goto(GameOver);
}