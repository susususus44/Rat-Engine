draw_set_font(Font1)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_alpha(0.75)
if (opened)
	draw_rectangle_color(0, 0, window_get_width(), window_get_height, c_black, c_black, c_black, c_black, false)
draw_set_alpha(1)
if (opened)
	draw_text_transformed(0, 246, string_concat(str, (showcursor ? "|" : "")), 0.5, 0.5, 0)
if (opened)
for (var i = 0; i < array_length(history); ++i){
	if (history[i][1] != 2) {
	draw_set_alpha(0.25)
	if (history[i][1])
		draw_set_color(c_red)
	else
		draw_set_color(c_green)
	draw_rectangle(2, (246 - lerppos) + 10 * i, 256, (255 - lerppos) + 10 * i, false) 
	}
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text_transformed(2, (246 - lerppos) + 10 * i, string_replace(history[i][0], " - FAILED", ""), 0.5, 0.5, 0)
}
if (opened && array_length(search) > 0) {
	draw_set_alpha(0.25)
	draw_text_transformed(0, 246, string_replace(search[0], " - FAILED", ""), 0.5, 0.5, 0)
	draw_set_alpha(1)
}
draw_set_halign(fa_right)
if (opened)
draw_text(959, 0, "Vadimo's debug console")
draw_set_color(c_white)