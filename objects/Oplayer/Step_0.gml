	
if (global.pause) exit

	switch(state)
	{
		case PlayerState.FREE: PlayerStateFree(); break;
		case PlayerState.FREEZE: PlayerStateFreeze(); break;
	}
	
	//pause do player
	if keyboard_check_pressed(ord("P")){
		state = PlayerState.FREEZE;
	}