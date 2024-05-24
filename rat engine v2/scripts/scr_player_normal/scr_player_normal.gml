function scr_player_normal() {
	move = (key_left + key_right)
	if (move != 0) {
	if (move == -1 && hsp > -5)
		hsp -= 0.6
	if (move == 1 && hsp < 5)
		hsp += 0.6
	}
	else
	{
		hsp = approach(hsp, 0, 0.8)
	}
}