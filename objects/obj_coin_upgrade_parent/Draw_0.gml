draw_self();
var des_text_size = SCALER.scale * 2;
var cost_text_size = SCALER.scale * 2;

if (global.is_html)
{
	des_text_size *= 2;
	cost_text_size *= 2;
}

draw_text_ext_transformed(x, y, text, 15 * SCALER.scale,200* SCALER.scale, des_text_size, des_text_size, 0);

draw_text_ext_transformed(x, y + (170 * SCALER.scale), current_effect,(15* SCALER.scale),(200* SCALER.scale),des_text_size,des_text_size, 0);
draw_text_transformed(x, y + (200 * SCALER.scale), "Costs: " + string(cost) + " gyaru coins", cost_text_size , cost_text_size, 0);