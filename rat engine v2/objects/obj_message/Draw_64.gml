if ybox != 0
	draw_rectangle_color(10, 231 - ybox, 192, 231 + ybox, c_black, c_black, c_black, c_black, false)
if (ybox == 20)
	draw_text_transformed(11, 212, str, 0.5, 0.5, 0)
var _avataractualx = 256 - sprite_get_width(avatarspr)
var _avataractualy = 256 - sprite_get_height(avatarspr) + 7
draw_sprite(avatarspr, 0, _avataractualx + xavatar, _avataractualy)