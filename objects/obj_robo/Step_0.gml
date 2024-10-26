

switch(state)
{
case INIMIGO_STATE.PARADO: robo_parado();  break;

case INIMIGO_STATE.PERSEGUINDO: robo_perseguindo(); break;

case INIMIGO_STATE.ATACANDO: robo_atacando(); break;

}


 if global.life < 1{
	
	game_restart()

};

// Reduz a vida do robô


// Verifica se a vida do robô chegou a 0
