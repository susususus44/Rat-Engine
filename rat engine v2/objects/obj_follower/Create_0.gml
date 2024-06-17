count = 1
offsetx = 0
offsetxactual = 0
offsety = 0
followqueue = ds_queue_create()
lag_step = 10
hsp = 0
isnotmoving = 0
idlespr = spr_cass
movespr = spr_cassfollower
enum followerstates {
	normal,
	teleport,
}
state = followerstates.normal
scr_collision_init()
depth = obj_player.depth + 1
alarm[0] = 4