function scr_player_normal() {
	move = (key_left + key_right)
	if (move != 0) {
	if (move == -1 && hsp > -3)
		hsp -= 0.3
	if (move == 1 && hsp < 3)
		hsp += 0.3
	image_xscale = move
	}
	else
	{
		hsp = approach(hsp, 0, 0.15)
	}
}