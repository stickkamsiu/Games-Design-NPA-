//checking for keys and reading the keys and store presses


var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);
var keyspace = keyboard_check(vk_space);

var hDirection = keyright - keyleft;
var vdirection = keydown - keyup;

hmove = hDirection * hSpeed;
vMove = vMove + playerGravity;


//walking left & right lol
if (hDirection != 0)
{
	image_xscale = hDirection;
	sprite_index = sprPlayerWalk;
}
else
{
	sprite_index = sprPlayerIdle;
}

//jump code lol
if (keyspace and onGround)
{
	vMove = -jumpSpeed;
	onGround = false;
	image_index = sprPlayerIdle;
} 

//colliding with floor
if(place_meeting(x, y+vMove, ObjBrickWalls))
{
	while(not place_meeting(x, y + sign(vMove), ObjBrickWalls))
	{
		y+=sign(vMove);
	}
	
	
	if(sign(vMove) == 1)
	{
		
		onGround = true;

	}
	vMove = 0;
}

if(place_meeting(x+hmove, y, ObjBrickWalls))
{
	while(not place_meeting(x+ sign(hmove), y, ObjBrickWalls))
	{
		x+=sign(hmove);
	}
	hmove = 0;
}

//climbing code

if(place_meeting(x, y+1, obj_ladder))
{
	if(vdirection < 0 or (vdirection = 0 and climbing) or (vdirection > 0 and place_meeting(x, y+sprite_height,obj_ladder)))
	{
		climbing = true;
	}
	else
	{
		 climbing = false;
	}
}
else
{
	climbing = false;
}

if(climbing = true)
{
	vMove = vdirection * vSpeed
	sprite_index = sprPlayerClimb
}




x += hmove;
y += vMove;