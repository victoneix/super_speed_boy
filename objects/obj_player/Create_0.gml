event_inherited();
state = "move";

jump_height = -7;
vspd_min = -7;
vspd_max = 7;

damage = function(){
	if(global.life > 1){
		global.life--;
	} else{
		game_end();
	}
}