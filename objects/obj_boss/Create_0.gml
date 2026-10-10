// Inherit the parent event
event_inherited();

move_spd = 1;
move_dir = 1;
state = "move";

life = 3;
respawn_max = 60;
respawn = respawn_max;


damage = function(){
	respawn = respawn_max;
	if(life > 1){
		life--;
	} else{
		instance_destroy();
	}
}