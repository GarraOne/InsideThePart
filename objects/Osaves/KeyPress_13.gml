	switch(index){
		case 0:
			if(xedni == true){
			if(file_exists("save.sav")){
					ini_open("save.sav")
					room_goto(ini_read_real("jogador", "sala",0));
					ini_close();
					global.garganciaSave = true;
					global.saveId = 1;
				}else{
					room_goto(RoomPc);
					global.saveId = 1;
				}
			}else{
				if(file_exists("save.sav"))file_delete("save.sav");
			}
		break;
		case 1:
			if(xedni == true){
			if(file_exists("saves.sav")){
					ini_open("saves.sav")
					room_goto(ini_read_real("jogador", "sala",0));
					ini_close();
					global.garganciaSave = true;
					global.saveId = 2;
				}else{
					room_goto(RoomPc);
					global.saveId = 2;
				}
			}else{
			if(file_exists("save.sav"))file_delete("save.sav");	
			}
			
		break;
		case 2: 
			if(xedni == true){
				room_goto(Menus); 	
				}else{
					 game_end();	
				}
		break;
	}
	