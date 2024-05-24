if paused
{
	draw_sprite(spr_custom, 0, 0, 0)
	draw_sprite_ext(spr_paused, 0, (global.screensize / 2) - floor(sprite_get_width(spr_paused) / 2) + sprite_get_xoffset(spr_paused), (global.screensize / 2) - floor(sprite_get_height(spr_paused) / 2) + sprite_get_yoffset(spr_paused), wave(1, 2, 2, 0), wave(1, 2, 2, 0), 0, c_white, 1)
}