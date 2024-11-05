/// @description Insert description here
// You can write your code in this editor
if (liferobo == 0) {
    // Destroi o robô
    instance_destroy(Obj_Robot_RED);
	
	
};

if (liferobo<= 0) {
    // Cria a explosão na posição do robô
    instance_create_layer(x, y, "Instances", Obj_explosao);
    
  
}