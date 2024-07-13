scr_collision()
image_xscale = (obj_player.x >= x ? 1 : -1)
var _p_near = distance_to_object(obj_player) < 100
if (_p_near && sprite_index != spr_nutspitter_spitprep && sprite_index != spr_nutspitter_spit && abletospit && !instance_exists(obj_nut)) {
	abletospit = false
	sprite_index = spr_nutspitter_spitprep
	image_index = 0
}
if (sprite_index == spr_nutspitter_spitprep && floor(image_index) == image_number - 1) {
	sprite_index = spr_nutspitter_spit
	image_index = 0
}
if (sprite_index == spr_nutspitter_spit && floor(image_index) == 1 && !instance_exists(obj_nut)) {
	alarm[0] = 150
	with (instance_create(x + image_xscale * 5, y, obj_nut)) {
		image_xscale = other.image_xscale
	}
}
if (sprite_index == spr_nutspitter_spit && floor(image_index) == image_number - 1) {
	sprite_index = spr_nutspitter
	image_index = 0
}
