function scr_hurtplayer(playerid) {
    with (playerid) {
		if (hurttimer > 0)
			return 0;
        state = states.hurt
        sprite_index = hurtspr
        image_index = 0
        hsp = 1.9 * -xscale
        vsp = -5
		hurttimer = 50
		alarm[0] = 2
    }
}