/// @description Insert description here
// You can write your code in this editor
tamanho_10_corcento = abs(tamanho_slider_x/10);


	volume_final = abs(round((round(mouse_x/tamanho_10_corcento)*tamanho_10_corcento - tamanho_inicial_x)/tamanho_10_corcento));
	
	x = tamanho_inicial_x+(volume_final*tamanho_10_corcento);
	volume = (volume_final);


show_debug_message("x= " + string(x));
show_debug_message("mouse_x = " + string(mouse_x));
//show_debug_message("tamanho_inicial_x = " + string(tamanho_inicial_x));
show_debug_message("tamanho_10_corcento = " + string(tamanho_10_corcento));


