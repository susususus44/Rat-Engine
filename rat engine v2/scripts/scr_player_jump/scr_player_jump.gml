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
	if (floor(image_index) == image_number - 1 && sprite_index == jumpspr)
	{
		image_index = image_number - 1
		if (vsp > 0)
		{
			sprite_index = fallprepspr
			image_index = 0
		}
	}
	if (floor(image_index) == image_number - 1 && sprite_index == fallprepspr)
	{
		sprite_index = fallspr
	}
	if (hsp != 0)
		xscale = sign(hsp)
	if (grounded && vsp >= 0)
		state = states.normal
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