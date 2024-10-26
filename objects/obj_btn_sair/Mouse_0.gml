/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Sound_menu_botao,0,false);
var _my_method = function()
{
    show_debug_message("A second has passed!");
	
	game_end();
}

global.time_per_second = time_source_create(time_source_game, 1, time_source_units_seconds, _my_method, [], 1, time_source_expire_after);

time_source_start(global.time_per_second);
//room_goto(Room1);
