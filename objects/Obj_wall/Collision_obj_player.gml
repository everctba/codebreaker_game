if (place_meeting(x + hspeed, y, Obj_wall)) {
    // Impede o movimento horizontal
    velh = 0;
}
if (place_meeting(x, y + vspeed, Obj_wall)) {
    // Impede o movimento vertical
    velv = 0;
}