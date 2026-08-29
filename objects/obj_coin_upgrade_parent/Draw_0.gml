draw_self();
var des_text_size = SCALER.scale * 2;
var cost_text_size = SCALER.scale * 2;

if (global.need_scale)
{
	des_text_size *= 3.25;
	cost_text_size *= 3.25;
}

//html
//draw_text_ext_transformed(x, y, text, 40 * SCALER.scale,500* SCALER.scale, des_text_size, des_text_size, 0);
//draw_text_ext_transformed(x, y + (170 * SCALER.scale), current_effect,(40 * SCALER.scale),(500* SCALER.scale),des_text_size,des_text_size, 0);
//draw_text_transformed(x, y + (400 * SCALER.scale), "Costs: " + string(cost) + " gyaru coins", cost_text_size , cost_text_size, 0);

//gx.games
draw_text_ext_transformed(x, y, text, 25 * SCALER.scale,200* SCALER.scale, des_text_size, des_text_size, 0);
draw_text_ext_transformed(x, y + (100 * SCALER.scale), current_effect,(25 * SCALER.scale),(200* SCALER.scale),des_text_size,des_text_size, 0);
draw_text_transformed(x, y + (200 * SCALER.scale), "Costs: " + string(cost) + " gyaru coins", cost_text_size , cost_text_size, 0);