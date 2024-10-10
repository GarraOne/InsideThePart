	switch(index){
		case 0: 
		if(NUMber != 2){
			if(xedni == true){
				numero[NUMber] += "1";
			}else{
				numero[NUMber] += "0";	
			}
		}
		break;
		case 1:
			if(xedni == true){
				operacao = "OR";
				opre = 0;
			}else{
				operacao = "AND";
				opre = 1;
			}
		break;
		case 2:
		if(xedni == true){
			NUMber++;
			if(NUMber == 3){
				NUMber = 0;
				numero = ["", "", ""];
			}	
				if(NUMber == 2){
					//Calculando
					var pen = real(numero[0]);
					var pon = real(numero[1]);	
					if(opre == 0){
					numero[2] = string (pen | pon);
					}else{
						numero[2] = string (pen & pon);
					}
				}
			}else{
				room_goto(Menus);
			}
		break;
	}
	