//The scripts
controlSetup()
varSet()
playerPlay()


//switching player states
switch (playerState) {
    case playerStates.stand:
        standStateFunction();
        break;
	case playerStates.walking:
        walkStateFunction();
        break;
	case playerStates.jump:
        jumpStateFunction();
        break;
	case playerStates.falling:
        fallStateFunction();
        break;
	case playerStates.attack:
		attackStateFunction();
		break;
	case playerStates.drop:
		dropStateFunction();
		break;
}
/*
switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_FREE(); break;
	case PLAYERSTATE.ATTK: PlayerState_ATTACK(); break;
	case PLAYERSTATE.DROP: PlayerState_DROP()(); break;
}
*/