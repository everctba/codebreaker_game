/// @description Insert description here
// You can write your code in this editor
tamanho_w_sala = room_width/2;
tamanho_h_sala = room_height/2;
mouse_em_x_smooth = tamanho_w_sala + (mouse_x * 0.015);
mouse_em_y_smooth = tamanho_h_sala + (mouse_y * 0.01);

x = mouse_em_x_smooth;
y = mouse_em_y_smooth-150;