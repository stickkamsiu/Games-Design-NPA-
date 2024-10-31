//creating variables
//Essential, do not change!
//Scripts
global.playerGravity = 0.5;
global.onGround = true;
global.hSpeed = 4;
global.vSpeed = 4;
global.vMove = 0;
global.hmove = 0;
global.jumpSpeed = 10;
global.JumpNo = 2;
global.JumpCurrent = 0;

//HP. Linked in with the HUD OBJ (Thanks Global Variables)
global.hp = 50;
global.hp_max = global.hp;
global.flash = 0;

//Bro imagine being so bad you need several variables to make a flashing invincibility
flash = 0;

//ugh messing with the alpha for an object is weird.
image_alpha = 1;

//For healthbar
global.healthbar_width = 190;
global.healthbar_height = 40;
global.healthbar_x = 0; //(320/2) - (global.healthbar_width/2);
global.healthbar_y = 0; //ystart - 100;

//Player States. Do NOT change or remove
playerState = playerStates.stand;
playerScaleX = image_xscale;

//REMOVE CLIMBING AT A LATER STATE
global.climbing = false;

depth = -100 //check what this is at a later time lol

//Use states with caution
//state = PLAYERSTATE.FREE;
//atkHIT = ds_list_create();

//Different States
enum playerStates
{
	stand,
	walking,
	jump,
	falling,
	attack,
	drop
}