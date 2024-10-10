	draw_set_font(FtMenu);
	
	var dist = 100;
	var gui_largura = display_get_gui_width();
	var gui_altura = display_get_gui_height();
	var x1 = gui_largura/2;
	var y1 = gui_altura/2;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(x1, y1 + dist * -1 - 75, operacao + "\n" + numero[0] + "\n" + numero[1] + "\n" + numero[2]);
	
	for(var i = 0; i < op_max; i++){
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		if(index == i && xedni == true){
			draw_set_color(c_yellow);
		}else{
			draw_set_color(c_white);
		}
		draw_text(x1 - 170, y1 + dist * i + 70, opcoes[i]);
	}
	
	for(var i = 0; i < op_max; i++){
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		if(index == i && xedni == false){
			draw_set_color(c_yellow);
		}else{
			draw_set_color(c_white);
		}
		draw_text(x1 + 170, y1 + dist * i + 70, opernoes[i]);
	}
	
	draw_set_font(-1);