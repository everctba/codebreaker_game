/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
x = obj_player.x
y =obj_player.y

var _dire = point_direction(x, y, mouse_x, mouse_y)

image_angle = _dire

var _intervalo = _dire == clamp(_dire, 90, 270)

if(_intervalo)
{
 image_yscale = -1
}else{
image_yscale = 1
}


//chegando botão para tiro
var _click = mouse_check_button_pressed(mb_left)

if(_click){
 var _xx = x + lengthdir_x(20, _dire)
 var _yy = y + lengthdir_y(20, _dire)

 var _tiro = instance_create_layer(_xx, _yy, "instances", Obj_tiro) 
 _tiro.direction = _dire
}