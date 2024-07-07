if (place_meeting(x, y, obj_player) && obj_player.vsp > 1) {
    with (instance_place(x, y, obj_player)) {
        vsp = -6
        sprite_index = jumpspr
        state = states.jump
        image_index = 0
    }
	instance_destroy(nutspitterID)
	instance_destroy()
	instance_create(x, y, obj_hitflash)
	audio_play_sound(sfx_stomp, 1, false)
}