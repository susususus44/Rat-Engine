function scr_player_normal() {
	grav = 0.5
	jumpstop = 0
	move = (key_left + key_right)
	if (move != 0) {
	if (move == -1 && hsp > -3)
		hsp -= 0.3
	if (move == 1 && hsp < 3)
		hsp += 0.3
	}
	else
	{
		hsp = approach(hsp, 0, 0.15)
	}
	if (hsp != 0) {
		xscale = sign(hsp)
		sprite_index = movespr
		image_speed = hsp * 0.1
	}
	else
	{
		sprite_index = idlespr
		image_speed = 0.35
	}
	if (key_jump2 && grounded) {
		audio_play_sound(sfx_jump, 0, false)
		vsp = -6
		state = states.jump
	}
}