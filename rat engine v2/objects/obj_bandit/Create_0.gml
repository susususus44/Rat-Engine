state = states.normal
movespeed = 1
canfall = 0
scr_collision_init()
grav = 0.5
scr_bandit_run = function(){
	if (hsp != 0)
		image_xscale = sign(hsp)
	if (sprite_index != spr_bandit_jump) {
	if (obj_player.x >= x)
	{	
		hsp = approach(hsp, 4, 0.1)
	}
	else
	{
		hsp = approach(hsp, -4, 0.1)
	}
	if (collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true) && grounded)
	{
		sprite_index = spr_bandit_search
		image_index = 0
		state = states.searching
	}
	}
}
scr_bandit_searching = function(){
	hsp = 0
	if (collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true))
	{
		sprite_index = spr_bandit_jump
		image_index = 0
		state = states.charging
	}
	if (sprite_index == spr_bandit_search && floor(image_index) == image_number - 1)
	{
		state = states.normal
		sprite_index = spr_bandit_walk
		image_index = 0
	}
}