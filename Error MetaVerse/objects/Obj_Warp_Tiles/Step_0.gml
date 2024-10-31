if place_meeting(x, y, objPlayer9) && !instance_exists(Obj_Trans)
{
	var inst = instance_create_depth(0, 0, -9999, Obj_Trans);
	
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
}//If the tiles meet the player, creates the transition to new room.




