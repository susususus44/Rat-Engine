if (other.state != states.hurt && obj_player.hurttimer <= 0 && !obj_player.instakill) {
    scr_hurtplayer(other)
	instance_create(x, y, obj_hitflash, depth - 1)
	if (obj_player.x >= id.x)
		image_xscale = 1
	else
		image_xscale = -1
}