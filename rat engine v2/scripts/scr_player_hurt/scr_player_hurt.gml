function scr_player_hurt() {
	if (grounded && vsp > 0)
		state = states.normal
}