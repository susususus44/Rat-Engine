function scr_player_normal() {
	grav = 0.5
	jumpstop = 0
	move = (key_left + key_right)
	movespeed = hsp * sign(hsp)
	var hspacc = 0.3
	if (move != 0 && !place_meeting(x + move, y, obj_solid)) {
		if (move == -1 && hsp > -4)
			hsp -= hspacc
		if (move == 1 && hsp < 4)
			hsp += hspacc
	}
	else {
		hsp = approach(hsp, 0, 0.15)
		if (place_meeting(x + move, y, obj_solid))
			hsp = 0
	}
	if (hsp != 0) {
		var sprmove = movespr
		if (xscale != move && move != 0)
			sprmove = turnspr
		else if (movespeed >= 4)
			sprmove = runspr
		xscale = sign(hsp)
		sprite_index = sprmove
		image_speed = hsp * 0.1
		if (sprmove == runspr)
			image_speed = hsp * 0.05
	}
	else
	{
		var spridle = idlespr
		if (key_up)
			spridle = lookupspr
		sprite_index = spridle
		image_speed = 0.35
	}
	if (key_jump2 && grounded) {
		audio_play_sound(sfx_jump, 0, false)
		sprite_index = jumpspr
		image_speed = 0.35
		image_index = 0
		vsp = -6
		state = states.jump
	}
	if (!grounded) {
		sprite_index = fallprepspr
		image_speed = 0.35
		image_index = 0
		state = states.jump
	}
	if (key_attack2) {
		var audio = sfx_kick1
		audio_play_sound(audio, 0, false)
		audio_sound_pitch(audio, random_range(0.8, 1.2))
		state = states.kick
		sprite_index = choose(kick1spr, kick2spr, kick3spr)
		image_index = 0
		image_speed = 0.35
	}
	if (key_down) {
		state = states.crouch
		sprite_index = crouchspr
		image_index = 0
	}
}