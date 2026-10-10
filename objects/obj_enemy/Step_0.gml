switch(state){
	case "move":
		hspd = move_dir * move_spd;
		if(place_meeting(x+1,y,obj_collision)){
			move_dir *= -1;
		}
		
		if(!position_meeting(x+(8*move_dir),y+1,obj_collision)){
			move_dir *= -1;
		}
	break;
}