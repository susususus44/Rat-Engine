function scr_player_crouch(){
	move = (key_left + key_right)
	var hspacc = 0.1
	if (move != 0) {
		if (move == -1 && hsp > -2)
			hsp -= hspacc
		if (move == 1 && hsp < 2)
			hsp += hspacc
	}
	else {
		hsp = approach(hsp, 0, hspacc)
	}
	hsp = clamp(hsp, -2,2)
	if (key_down) {
		state = states.normal
	}
	if (!grounded) {
		image_speed = 0.35
		image_index = 0
		state = states.jump
	}
	if (key_jump2 && grounded) { // huh, its really weird, so thats why ptg made another script for the crouch jump..
		audio_play_sound(sfx_jump, 0, false)
		image_speed = 0.35
		image_index = 0
		vsp = -3
		grav = 0.4
		state = states.jump
	}
}