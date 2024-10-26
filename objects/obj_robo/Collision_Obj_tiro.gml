/// @description Insert description here
// You can write your code in this editor
liferobo -= 1;

// Verifica se a vida do robô chegou a 0 ou menos
if (liferobo == 0) {
    // Destroi o robô
    instance_destroy(obj_robo);
	
	
};

if (liferobo <= 0) {
    // Cria a explosão na posição do robô
    instance_create_layer(x, y, "Instances", Obj_explosao);
    
  
}

  