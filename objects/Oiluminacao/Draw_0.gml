	
if(surface_exists(sombra_surface)){
	surface_set_target(sombra_surface );
	vaco = 1/global.aumentoLus;
	meuto = 1/global.aumentoLus;
	meux = Oplayer.x;
	meuy = Oplayer.y;
	if(global.luses == 0){	
		meuta = 1/global.aumentoLus;
	}else if(global.luses == 1){
		meuta = 0;
	}else if(global.luses == 2){
		meuta = 0;
		meuto = 0;
	}else{
		meuta = 0;
		meuto = 0;
		vaco = 0;
	}
		if(global.pause == true){
			meuta = 0;
			meuto = 0;
		}
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	gpu_set_blendmode(bm_subtract)
	draw_circle(meux, meuy, (124 + irandom(7))*vaco, false);
	draw_circle(Oluzs.x, Oluzs.y, 124 + irandom(7), false);
	draw_set_alpha(0.7);
	draw_circle(meux, meuy, (274 + irandom(7))*meuto, false);
	draw_circle(Oluzs.x, Oluzs.y, 274 + irandom(7), false);
	draw_set_alpha(0.4);
	draw_circle(meux, meuy, 574 * meuta, false);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	}else{
		sombra_surface = surface_create(room_width, room_height);
	}
	
	draw_surface(sombra_surface, 0, 0);