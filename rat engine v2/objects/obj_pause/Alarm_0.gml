	if (!paused) {
		spr_custom = sprite_create_from_surface(application_surface, 0, 0, 256, 256, false, false, 0, 0)
		instance_deactivate_all(true)
		instance_activate_object(obj_hud)
		paused = 1
		audio_play_sound(sfx_pause, 0, false)
	}
	else
	{
		if (sprite_exists(spr_custom))
			sprite_delete(spr_custom)
		instance_activate_all()
		audio_stop_sound(sfx_pause)
		paused = 0
	}