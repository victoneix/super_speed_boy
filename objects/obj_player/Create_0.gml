event_inherited();
state = "move";

jump_height = -7;
vspd_min = -7;
vspd_max = 7;

respawn_max = 60;
respawn = respawn_max;

damage = function(){
	respawn = respawn_max;
	if(global.life > 1){
		global.life--;
	} else{
		game_end();
	}
}