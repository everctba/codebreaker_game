instance_destroy()

// Quando o tiro colide com a parede
instance_create_layer(x, y, "Instances", obj_impacto); // Cria a animação de impacto na posição do tiro

// Destroi o tiro após a colisão
instance_destroy(Obj_tiro);
