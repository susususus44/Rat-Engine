scr_collision()
scr_getinput()
switch state {
	case states.normal:
		scr_player_normal()
		break
	case states.jump:
		scr_player_jump()
		break
	case states.kick:
		scr_player_kick()
		break
	case states.crouch:
		scr_player_crouch()
		break
	case states.arialkick:
		scr_player_arialkick()
		break
	case states.hurt:
		scr_player_hurt()
		break
}
if (hurttimer < 0)
	visible = true
else
	hurttimer--
if (obj_player.state == states.kick || obj_player.state == states.arialkick)
	instakill = true
else
	instakill = false