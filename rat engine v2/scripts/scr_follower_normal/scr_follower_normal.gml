function scr_follower_normal(){
scr_collision()
isnotmoving = (obj_player.hsp == 0 && obj_player.move == 0)
if (!isnotmoving) {
	ds_queue_enqueue(followqueue, obj_player.hsp)
	ds_queue_enqueue(followqueue, obj_player.vsp)
}
offsetxactual = approach(offsetxactual, offsetx, 5)
lag_step = count * 10
if !isnotmoving && (ds_queue_size(followqueue) > (lag_step * 3))
{
	grav= 0.5
	if (place_meeting(x, y, obj_slope))
		offsety = offsetxactual / 1.4
	else
		offsety = 0
    hsp = ds_queue_dequeue(followqueue)
    vsp = ds_queue_dequeue(followqueue)
	if (hsp != 0)
		image_xscale = sign(hsp)
}
else if isnotmoving
{
	hsp = 0
	grav = 0.6
}
if ((place_meeting(x, y, obj_player)) && isnotmoving)
{
	hsp = -2 * obj_player.xscale
}
if (distance_to_object(obj_player) > 280)
{
	state = followerstates.teleport
}
}