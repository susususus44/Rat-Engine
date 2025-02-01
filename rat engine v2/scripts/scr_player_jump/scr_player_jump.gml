function scr_player_jump(){
	grav = 0.35
	var jspr = jumpspr
	var pfspr = fallprepspr
	var fspr = fallspr
	if (verticaljump) {
		jspr = vertjumpspr
		pfspr = vertfallprepspr
		fspr = vertfallspr
	}
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
	if (floor(image_index) == image_number - 1 && sprite_index == jspr)
	{
		image_index = image_number - 1
		if (vsp > 0)
		{
			sprite_index = pfspr
			image_index = 0
		}
	}
	if (floor(image_index) == image_number - 1 && sprite_index == pfspr)
	{
		sprite_index = fspr
	}
	if (hsp != 0)
		xscale = sign(hsp)
	if (grounded && vsp >= 0) {
		state = states.normal
		verticaljump = false
	}
	if (key_attack2) {
		var audio = sfx_kick1
		audio_play_sound(audio, 0, false)
		audio_sound_pitch(audio, random_range(0.8, 1.2))
		state = states.arialkick
		sprite_index = choose(kickarial1spr)
		image_index = 0
		image_speed = 0.35
	}
}