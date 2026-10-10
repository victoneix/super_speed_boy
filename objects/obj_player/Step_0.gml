if(keyboard_check_pressed(ord("R"))) room_restart();
switch(state){
	case "move":
		var _right	= keyboard_check(ord("D"));	
		var _left	= keyboard_check(ord("A"));	
		var _jump	= keyboard_check(vk_space);
		var _ground = place_meeting(x,y+1,obj_collision);
		hspd = (_right - _left)*spd;
		vspd += grav;
		vspd = clamp(vspd,vspd_min,vspd_max);
		
		if(_ground && _jump){
			vspd = 0;
			vspd = jump_height;
		}
		
		if(!_ground && vspd > 0){
			var _c = instance_place(x,y+1,obj_enemy);
			if(_c){
				vspd = 0;
				vspd = jump_height;
				instance_destroy(_c.id);
			}
		}
		
		if(!_ground && vspd > 0){
			var _b = instance_place(x,y+1,obj_boss);
			if(_b){
				vspd = 0;
				vspd = jump_height;
				with(obj_boss){
					state = "stopped";
					damage();
					move_spd++;
				}
			}
		}
		
		if(instance_place(x+hspd,y,obj_enemy)){
			state = "death";
			damage();
		}
	break;
	
	case "death":
		hspd = 0;
		vspd = 0;
		respawn--;
		if(respawn < 1){
			room_restart()
		}
	break;
	
}

global.t_mil++;

if(global.t_mil = 59){
	global.t_sec++;
	global.t_mil = 0;
}

if(global.t_sec = 59){
	global.t_sec = 0;
	global.t_min++;
}

if(global.t_min = 59){
	global.t_min = 0;
}