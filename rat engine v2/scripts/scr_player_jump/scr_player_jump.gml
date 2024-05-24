function scr_player_jump(){
	grav = 0.4
	move = (key_left + key_right)
	if (move != 0) {
	if (move == -1 && hsp > -2)
		hsp -= 0.2
	if (move == 1 && hsp < 2)
		hsp += 0.2
	}
	else
	{
		hsp = approach(hsp, 0, 0.15)
	}
	if (hsp != 0)
		xscale = sign(hsp)
	if (grounded && vsp >= 0)
		state = states.normal
}