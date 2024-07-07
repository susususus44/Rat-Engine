if (other.state != states.hurt)
    scr_hurtplayer(other)
instance_create(x, y, obj_hitflash, depth - 1)
instance_destroy()