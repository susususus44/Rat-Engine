function scr_instakill(){
	if (place_meeting(x, y, obj_player)) {
		var playerid = instance_place(x, y, obj_player).id
		if (playerid.instakill) {
			audio_play_sound(sfx_stomp, 1, 0)
			instance_destroy()
			instance_create(x, y, obj_hitflash, depth - 1)
		}
	}
}