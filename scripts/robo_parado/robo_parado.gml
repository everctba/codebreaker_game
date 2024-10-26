 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function robo_parado(){
spd = 0
x = obj_robo.x;
y = obj_robo.y;

diferencaX = obj_player.x - x;
diferencaY = obj_player.y - y;

//if (true) {
//	show_debug_message("diferenca X = " + string(diferencaX));
	
//}
if distance_to_object(obj_player) < 100
{
	podecriarTextoRobo = true;
	show_debug_message("Entrou no range");
	show_debug_message("varaivel pode criar texto robo = "+  string(podecriarTextoRobo));
	
	
	
state = INIMIGO_STATE.PERSEGUINDO

}else{
	podecriarTextoRobo = false;
}



} 

