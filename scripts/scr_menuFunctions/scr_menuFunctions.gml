// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_menu(_x, _y, _options, _description = -1){
	with (instance_create_depth(_x,_y,-999,obj_menu)){
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		
		margin = 8;
		draw_set_font(fnt_silver);

		width = 1;
		if (_description != -1) width = max(width, string_width(_description));
		for (var i = 0; i < optionsCount; i++){
			width = max(width, string_width(_options[i][0]));
		}
		width += string_width(hovermarker);
	
		heightLine = 17;
		height = heightLine * (optionsCount + !(description == -1));
	
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
	
	
}

function scr_spawn_turret(){
	var _mouse_constructor_pos_x = 32*(mxPrev div 32);
	var _mouse_constructor_pos_y = 32*(myPrev div 32);	
	instance_create_layer(_mouse_constructor_pos_x, _mouse_constructor_pos_y, "Instances", obj_turret);
}