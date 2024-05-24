if !audio_is_playing(RAT_ENGINE) && image_alpha = 0
	room_goto(rm_1)
if !audio_is_playing(RAT_ENGINE) && image_alpha > 0
	image_alpha = approach(image_alpha, 0, 0.1)
else
	image_alpha = approach(image_alpha, 1, 0.1)