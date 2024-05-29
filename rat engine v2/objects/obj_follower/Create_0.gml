count = 1
offsetx = 0
offsetxactual = 0
offsety = 0
followqueue = ds_queue_create()
lag_step = 10
hsp = 0
isnotmoving = 0
enum followerstates {
	normal,
	teleport,
}
scr_collision_init()
depth = obj_player.depth + 1
alarm[0] = 4