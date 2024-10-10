	draw_set_font(FtMenu);
	
	var dist = 90;
	var gui_largura = display_get_gui_width();
	var gui_altura = display_get_gui_height();
	var x1 = gui_largura/2;
	var y1 = gui_altura/2;
	
	
	for(var i = 0; i < op_max; i++){
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		if(index == i && xedni  == true){
			draw_set_color(c_yellow);
		}else{
			draw_set_color(c_white);
		}
		draw_text(x1 - 180, y1 + dist * i - 80, opcoes[i]);
	}
	
	for(var i = 0; i < op_max; i++){
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		if(index == i && xedni == false){
			draw_set_color(c_yellow);
		}else{
			draw_set_color(c_white);
		}
		draw_text(x1 + 180, y1 + dist * i - 80, opagoes[i]);
	}
	
	draw_set_font(-1);