	
	if(opsoes == true){
		switch(index){
			case 0:
			podade++;
			if(podade == 5){
				podade = 0;	
			}
				pertamde = tamanhodalus[podade];
				global.aumentoLus = pertamde;
				opagoes[0] = "Tamanho da luz: " + string(pertamde);
			break
			case 1: 
			break;
			case 2: opsoes = false;
			break;
		}
		exit
	}
	
	if(global.pause == true){
	switch(index){
		case 0: global.pause = !global.pause;
		break;
		case 1: 
			switch(global.saveId){
				case 1:
					if(file_exists("save.sav"))file_delete("save.sav");
					ini_open("save.sav");
					ini_write_real("jogador", "xAtual", Oplayer.x);
					ini_write_real("jogador", "yAtual", Oplayer.y);
					ini_write_real("jogador", "sala",room);
					ini_close();
					show_message("Jogo Salvo");
				break;
				case 2: 
					if(file_exists("saves.sav"))file_delete("saves.sav");
					ini_open("saves.sav");
					ini_write_real("jogador", "xAtual", Oplayer.x);
					ini_write_real("jogador", "yAtual", Oplayer.y);
					ini_write_real("jogador", "sala",room);
					ini_close();
					show_message("Jogo Salvo");
				break;
			}
			
		break;
		case 2:
			switch(global.saveId){
				case 1:
					if(file_exists("save.sav")){
					ini_open("save.sav")
					if(room != ini_read_real("jogador", "sala",0)){
						room_goto(ini_read_real("jogador", "sala",0));
					}					
					Oplayer.x = ini_read_real("jogador", "xAtual", 0); 
					Oplayer.y = ini_read_real("jogador", "yAtual", 0); 
					ini_close();
					}
				break;
				case 2:
					if(file_exists("saves.sav")){
					ini_open("saves.sav")
					if(room != ini_read_real("jogador", "sala",0)){
						room_goto(ini_read_real("jogador", "sala",0));
					}					
					Oplayer.x = ini_read_real("jogador", "xAtual", 0); 
					Oplayer.y = ini_read_real("jogador", "yAtual", 0); 
					ini_close();
					}
				break;
			}
		break;
		case 3: room_goto(Menus);
		break;
		case 4: opsoes = true; 
		break;
		case 5: game_end();
		break;
	}
}
	

	