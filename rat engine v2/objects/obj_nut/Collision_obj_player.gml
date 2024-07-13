if (other.state != states.hurt && obj_player.hurttimer <= 0)
    scr_hurtplayer(other)
instance_create(x, y, obj_hitflash, depth - 1)
instance_destroy()