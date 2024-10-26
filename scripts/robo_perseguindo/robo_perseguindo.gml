// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function robo_perseguindo(){
	
spd = 0.5	
	
//pra podere atualizar o texto da GUI Posicao diferenca player menos robo -  quando entrar nesse state...	
x = obj_robo.x;
y = obj_robo.y;

diferencaX = obj_player.x - x;
diferencaY = obj_player.y - y;

//--------------------------------------------------------------------------------



targetX = obj_player.x - x;
targetY = obj_player.y - y;

var _targetX = sign(targetX) * spd;
var _targetY = sign(targetY) * spd;
show_debug_message("diferenca _targetX = " + string(sign(targetX) * spd));
show_debug_message("diferenca _targetY = " + string(_targetY));
// Horizontal Collision Player

if (place_meeting(x + _targetX, y, obj_player)) {
    while!place_meeting(x + _targetX, y, obj_player) {
        x += sign(_targetX);
}
_targetX = 0;
}
x += _targetX;

if (place_meeting(x, y + _targetY, obj_player)) {
    while !place_meeting(x, y + _targetY, obj_player) {
        y += sign(_targetY);
}
_targetY = 0;
}
y += _targetY;

//checar distancias
if distance_to_object(obj_player) > 400 {
    state = INIMIGO_STATE.PARADO;

}
//if place_meeting(x, y, obj_player){
if distance_to_object(obj_player) < 10 {

    state = INIMIGO_STATE.ATACANDO;

}else 
if distance_to_object(obj_player) < 400
{
    state = INIMIGO_STATE.PERSEGUINDO;  //para ter certeza que ele vai voltar depois de atacar o player

}

}
