draw_self();
var des_text_size = SCALER.scale * 5;
var cost_text_size = SCALER.scale * 3;
draw_text_ext_transformed(x, y, text, 
	min((15* SCALER.scale), 15), 
	min((200* SCALER.scale), 200), 
	des_text_size, des_text_size, 0);

draw_text_ext_transformed(x, y + 
	min((170 * SCALER.scale), 170),
	current_effect, min((15* SCALER.scale), 15),
	min((200* SCALER.scale), 200),
	des_text_size,des_text_size, 0);
draw_text_transformed(x, y + 
	min((200 * SCALER.scale), 200), 
	"Costs: " + string(cost) + " gyaru coins", cost_text_size , cost_text_size, 0);