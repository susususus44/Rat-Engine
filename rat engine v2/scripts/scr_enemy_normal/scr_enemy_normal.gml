function scr_enemy_normal(){
	hsp = (movespeed * image_xscale)
	var goingtoturn = ((((!canfall ? !place_meeting(x + 20 * image_xscale, y + 2, par_collision) : 0) && grounded) && !place_meeting_slope(x, y +1)) || place_meeting_solid((x + 1 * image_xscale), y - 3))
	if (goingtoturn) {
		image_xscale *= -1
	}
	var desiredxscale = 0
	if (x < obj_player.x)
		desiredxscale = 1
	else
		desiredxscale = -1
	if (object_index == obj_bandit && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true) && image_xscale == desiredxscale && _p_near)
	{
		sprite_index = spr_bandit_jump
		image_index = 0
		state = states.charging
	}
}