function scr_bandit_run(){
	if (hsp != 0)
		image_xscale = sign(hsp)
	if (sprite_index != spr_bandit_jump) {
	if (obj_player.x >= x)
	{	
		hsp = approach(hsp, 2.5, 0.1)
	}
	else
	{
		hsp = approach(hsp, -2.5, 0.1)
	}
	if (collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true) && grounded) || !_p_near && grounded
	{
		sprite_index = spr_bandit_search
		image_index = 0
		state = states.searching
	}
	}
	else if (floor(image_index) == image_number - 1)
	{
		sprite_index = spr_bandit_run
		image_index = 0
	}
}
function scr_bandit_searching(){
	hsp = 0
	var desiredxscale = 0
	if (x < obj_player.x)
		desiredxscale = 1
	else
		desiredxscale = -1
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true) && image_xscale == desiredxscale && _p_near)
	{
		sprite_index = spr_bandit_jump
		image_index = 0
		hsp = 0
		state = states.charging
	}
	if (sprite_index == spr_bandit_search && floor(image_index) == image_number - 1)
	{
		state = states.normal
		sprite_index = spr_bandit_walk
		image_index = 0
	}
}