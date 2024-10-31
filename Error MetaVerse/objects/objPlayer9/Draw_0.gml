/// @creating a flashing (I hope)
draw_self();

/* HITBOX WHICH DIDN'T WORK :(
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1);
draw_set_color(c_white);
*/


if flash > 0 then
{
	flash --;
	shader_set(shWhite);
	draw_self();
	shader_reset()
}

