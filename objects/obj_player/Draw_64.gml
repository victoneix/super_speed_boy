var _margin = 0;
repeat(global.life){
	draw_sprite(spr_life,0,2+_margin,2);
	_margin += 11;
}

if(state == "swim"){
	var _margin_b = 0;
	draw_set_halign(2);
	repeat(bubbles){
		draw_sprite(spr_bubbles,0,116+_margin_b,2);
		_margin_b += 11;
	}
	draw_set_halign(0);
}

global.timer = "";
if(global.t_min > 9){global.timer += ""+string(global.t_min)}
if(global.t_min < 10){global.timer += "0"+string(global.t_min)}
global.timer += ":";
if(global.t_sec > 9){global.timer += ""+string(global.t_sec)}
if(global.t_sec < 10){global.timer += "0"+string(global.t_sec)}
global.timer += ":";
if(global.t_mil > 9){global.timer += ""+string(global.t_mil)}
if(global.t_mil < 10){global.timer += "0"+string(global.t_mil)}

draw_set_font(fnt_text_ui);
draw_set_halign(1);
draw_text_ext_transformed(160 div 2, 1, string(global.timer),0,999,0.3,0.3,0);
draw_set_halign(0);
draw_set_font(-1);