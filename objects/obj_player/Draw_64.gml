var _margin = 0;
repeat(global.life){
	draw_sprite(spr_life,0,2+_margin,2);
	_margin += 11;
}

draw_text_ext_transformed(160-16,1,global.cons,0,999,0.5,0.5,0);
draw_sprite(spr_con,0,160-11,2);