// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function robo_atacando(){


delay --;

//distance_to_object(obj_player) < 25
//if (delay < 0) and place_meeting(x,y, obj_player){ //place meenting é se ele tiver se colidindo com o player ent ele vai tirar dando do 

if (delay < 0) and (distance_to_object(obj_player.id) < 10) { //place meenting é se ele tiver se colidindo com o player ent ele vai tirar dando do 
	audio_play_sound(punch,0,false);
    global.life--;
	
    delay = 20   ;
	
	
}
//if !place_meeting(x, y, obj_player){ // se ele não tiver, ele vai voltar em modo de perseguição
if (distance_to_object(obj_player.id) >= 10){ // se ele não tiver, ele vai voltar em modo de perseguição
	

    state = INIMIGO_STATE.PERSEGUINDO

}



}
