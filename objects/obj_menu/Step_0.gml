/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _mouse_constructor_pos_x = floor(mouse_x/32);
var _mouse_constructor_pos_y = (mouse_y/32);
show_debug_message(_mouse_constructor_pos_y);
if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(_mouse_constructor_pos_x, _mouse_constructor_pos_y, "Instances", obj_turret);
}