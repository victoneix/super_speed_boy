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
	break;
	
}