function scr_hurtplayer(playerid) {
    with (playerid) {
        state = states.hurt
        sprite_index = hurtspr
        image_index = 0
        hsp = 1.4 * -xscale
        vsp = -5
    }
}