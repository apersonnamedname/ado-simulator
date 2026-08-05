function draw_hp_bar(_hp, _hp_max, _color, _width, _height, _x, _y)
{
	var _percent = _hp / _hp_max;	//should be below 1, shows how much of bar should be filled
	
	draw_sprite_stretched_ext(spr_box, 0, _x, _y, _width, _height, c_white, 1);
	draw_sprite_stretched_ext(spr_box, 0, _x, _y, (_width * _percent), _height, _color, 1);
}