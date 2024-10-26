var _dir = keyboard_check(ord("D"));
var _squer = keyboard_check(ord("A"));
var _cima = keyboard_check(ord("W"));
var _baixo = keyboard_check(ord("S"));

// Movimentação horizontal e vertical
velh = (_dir - _squer) * vel;
velv = (_baixo - _cima) * vel;
var velocidade_padrao_diagonal = 1/sqrt(2); // Compensação da Diagonal


show_debug_message("velh = " + string(velh));
show_debug_message("velv = " + string(velv));
show_debug_message("VEL = " + string(vel));

if ( (abs(velh) + abs(velv)) > 1 ){ //movimentacao menor pra compensar as duas teclas
	//show_debug_message("abs da soma das velocidades totais = " + string((abs(velh) + abs(velv))));
	x += velh * velocidade_padrao_diagonal;
	y += velv * velocidade_padrao_diagonal;
	//show_debug_message("velocidade h compensada = " + string(velh * velocidade_padrao_diagonal));
	
} else { //movimentacao velocidade normal
	x += velh;
	y += velv;
	
}


// Verificar se o personagem está se movendo
if (velh != 0 || velv != 0) {
    movendo = 1;
} else {
    movendo = 0;
}

// Trocar sprites baseado no estado de movimento
if (movendo == 1) {
    sprite_index = Spr_playercorre;  // Corrija o nome da sprite aqui se necessário
} else {
    sprite_index = Spr_player;  // Corrija o nome da sprite aqui se necessário
}

// Definir direção baseada na última tecla pressionada
if (_dir) lado = 2;
if (_squer) lado = 3;
if (_baixo) lado = 0;
if (_cima) lado = 1;

var _dire = point_direction(x, y, mouse_x, mouse_y)



var _intervalo = _dire == clamp(_dire, 90, 270)

if(_intervalo)
{
 image_xscale = -3
}else{
image_xscale = 3
}

if place_meeting(x+ velh,y,Obj_wall)
{
while (!place_meeting(x+sign(velh),y,Obj_wall))
{
x = x + sign(velh)
}
velh = 0;
}
x = x + velh;


//colisão vertical
if place_meeting(x,y+ velv, Obj_wall)
{
while (!place_meeting(x,y+sign(velv), Obj_wall))
{
y = y + sign(velv)
}
velv = 0;
}
y = y + velv;
// Se houver tremida

 if global.life < 1{
	
	game_restart();
 
 }
 if global.life == 0 {
   sprite_index = Spr_dead
 }