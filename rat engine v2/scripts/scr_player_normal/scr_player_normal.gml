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
	if (hsp != 0)
		xscale = sign(hsp)
	if (key_jump2 && grounded) {
		vsp = -6
		state = states.jump
	}
}