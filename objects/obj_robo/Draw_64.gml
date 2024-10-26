//draw_set_color(c_black);
//draw_set_alpha(0.75);
//draw_rectangle(0,0,200,120,false);
//draw_set_alpha(1);
//draw_set_color(c_white);

//draw_text(20,40, "Posicao robo X: " + string(obj_robo.x));
//draw_text(20,20, "Posicao robo Y: " + string(obj_robo.y));

//draw_text(20,60, "Posicao player X: " + string(obj_player.x));
//draw_text(20,80, "Posicao player Y: " + string(obj_player.y));
//draw_text(20,80, "Velocidade player H: " + string(velh));
//draw_text(20,80, "Velocidade player V: " + string(velv));

if (podecriarTextoRobo == true) {
	
	//draw_text(20,100, "Player menos que 100 do robo: X= " + string(diferencaX) + " - Y = " + string(diferencaY));
	//show_debug_message("diferenca X = " + string(diferencaX));
}


if (true) {
	draw_text(20,100, "Player menos que 100 do robo: X= " + string(diferencaX) + " - Y = " + string(diferencaY));
	if (state == 0){
		aplidoState = "parado";
	}
	if (state == 1){
		aplidoState = "perseguindo";
	}
	if (state == 2){
		aplidoState = "atacando";
	}
	draw_text(20,120, "State atual = " + string(aplidoState));

	
}