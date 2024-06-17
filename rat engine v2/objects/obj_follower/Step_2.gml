switch (state) {
	case followerstates.normal:
		scr_follower_normal()
		break
	case followerstates.teleport:
		if (x != obj_player.x && y != obj_player.y) {
			x = approach(x, obj_player.x, 10)
			y = approach(y, obj_player.y, 10)
		}
		else
		{
			state = followerstates.normal
		}
}