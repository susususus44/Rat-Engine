var _offsetx = (25 * count * obj_player.xscale)
offsetx = approach(offsetx, obj_player.hsp > -1 && obj_player.hsp < 1 ? _offsetx : 0 - count * 15 * -obj_player.xscale, 5)
alarm[0] = 2