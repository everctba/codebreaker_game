/// @description Insert description here
// You can write your code in this editor


//show_debug_message("Nome da Instancia 1X= " + id );
//draw_text(x,y-10,id);

switch(state)
{
case INIMIGO_STATE.PARADO: robo_parado();  break;

case INIMIGO_STATE.PERSEGUINDO: robo_perseguindo(); break;

case INIMIGO_STATE.ATACANDO: robo_atacando(); break;

}


 if global.life < 1{
	
	game_restart()

};