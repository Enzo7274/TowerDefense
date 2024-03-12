/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/*
var _mouse_constructor_pos_x = 32*(floor(mouse_x/32));
var _mouse_constructor_pos_y = 32*(floor(mouse_y/32));
show_debug_message(_mouse_constructor_pos_y);
show_debug_message(_mouse_constructor_pos_x);
if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(_mouse_constructor_pos_x, _mouse_constructor_pos_y, "Instances", obj_turret);
	
}
*/
global.input_menu_open = mouse_check_button(mb_right);
if(global.input_menu_open) {
	scr_menu(
	mouse_x,
	mouse_y,
	[
	["Build Turret", scr_spawn_turret],
	["Build Trap", -1],
	["Exit", -1]
	],
	"Choose an building type"
	)	
}