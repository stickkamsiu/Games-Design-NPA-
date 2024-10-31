/// @description Insert description here
// You can write your code in this editor
var _effectFire = function()
{
	effect_create_above(ef_firework, objPlayer9.x, objPlayer9.y, 1, c_aqua)

}

var _flashing = function()
{
	global.flash = 0;

	//draw_set_alpha(50);
}

//How long it takes for a blood to splash out. Will do this later
global.timeHP = time_source_create(time_source_game, 1, time_source_units_seconds, _effectFire);

//How long until invunerability stops
global.flashing = time_source_create(time_source_game, 2, time_source_units_seconds, _flashing);

