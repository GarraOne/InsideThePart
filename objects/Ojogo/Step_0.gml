	if(keyboard_check_pressed(vk_escape)){
	//Pausando jogo
		global.pause = !global.pause;
	}
	
	if(keyboard_check_pressed(ord("L"))){
	//LUS 
	global.luses += 1;
		if(global.luses == 4){
			global.luses = 0;	
		}
	}
	if(keyboard_check_pressed(ord("K"))){
	//AUMENTO DE luz
		global.aumentoLus += 0.2;
		if(global.aumentoLus > 3){
			global.aumentoLus += 0.7;
			if(global.aumentoLus > 15){
				global.aumentoLus = 0.7;	
			}
		}
	}
	
	// carregar save
	if (global.garganciaSave == true){
		switch(global.saveId){
			case 1: 
				ini_open("save.sav")
				Oplayer.x = ini_read_real("jogador", "xAtual", 0); 
				Oplayer.y = ini_read_real("jogador", "yAtual", 0); 
				global.garganciaSave = false;
				ini_close();
			break;
			case 2:
				ini_open("saves.sav")
				Oplayer.x = ini_read_real("jogador", "xAtual", 0); 
				Oplayer.y = ini_read_real("jogador", "yAtual", 0); 
				global.garganciaSave = false;
				ini_close();
			break;
		}
	}
