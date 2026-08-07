draw_self();
var text_size = SCALER.scale * 3
draw_text_ext_transformed(x, y, text, 15, 200, text_size,text_size, 0);
draw_text_ext_transformed(x, y + 170, current_effect, 15, 200, text_size,text_size, 0);
draw_text_transformed(x, y + 200, "Costs: " + string(cost) + " gyaru coins", text_size, text_size, 0);