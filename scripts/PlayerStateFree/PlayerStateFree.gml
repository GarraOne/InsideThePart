
	function PlayerStateFree() {
	
	script_execute(get_input)
		
#region Movimentação
	
	var mov = key_right - key_left != 0 || key_down - key_up != 0;
	
	MovDir = point_direction(0, 0, key_right - key_left, key_down - key_up);
	
	hspd = lengthdir_x(mov * spd, MovDir);
	vspd = lengthdir_y(mov * spd, MovDir);
	
	//Colisao horizontal
	if(place_meeting(x+hspd, y, Obarreira)){
		if(!place_meeting(x+sign(hspd), y, Obarreira)){
			x += sign(hspd);
		}
		hspd = 0;
	}
	//Colisao vertical
	if(place_meeting(x, y+vspd, Obarreira)){
		if(!place_meeting(x, y+sign(vspd), Obarreira)){
			y += sign(vspd);
		}
		vspd = 0;
	}
	
	x += sign(hspd)	
	x += hspd;
	y += sign(vspd)
	y += vspd;
	
#endregion

#region Vida
	
	//vidaa zero
	if global.life < 0
	{
		game_restart()
	}

#endregion 


#region Portal 
	//Colisao do "portal"
	if(place_meeting(x, y, OparaGPU)){
		room_goto(RGPU);
	}
	//Colisao do "portal"
	if(place_meeting(x, y, OparaArquivo)){
		room_goto(Rmarquivo);
	}
	//Colisao do "portal"
	if(place_meeting(x, y, OparaFonte)){
		room_goto(RmFonte);
	}
	//Colisao do "portal"
	if(place_meeting(x, y, OparaMemoriaRam)){
		room_goto(RmMemoriaRam);
	}
	//Colisao do "portal"
	if(place_meeting(x, y, OparaPlacaDeVideo)){
		room_goto(RmPlacaDeVideo);
	}
	
#endregion
		
	}