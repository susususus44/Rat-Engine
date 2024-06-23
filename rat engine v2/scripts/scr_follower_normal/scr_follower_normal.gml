function scr_follower_normal(){
scr_collision()
isnotmoving = 0
// this code is a nightmare, i fucking want to kms
if (!isnotmoving) {
	ds_queue_enqueue(followqueue, obj_player.grav)
	ds_queue_enqueue(followqueue, obj_player.hsp)
	ds_queue_enqueue(followqueue, obj_player.vsp)
}
offsetxactual = approach(offsetxactual, offsetx, 5)
lag_step = count * 10
if !isnotmoving && (ds_queue_size(followqueue) > (lag_step * 3))
{
	if (place_meeting(x, y, obj_slope))
		offsety = offsetxactual / 1.4
	else
		offsety = 0
	grav = ds_queue_dequeue(followqueue)
    hsp = ds_queue_dequeue(followqueue)
    vsp = ds_queue_dequeue(followqueue)
	if (hsp != 0)
		image_xscale = sign(hsp)
}
else if isnotmoving
{
	hsp = 0
}
if ((place_meeting(x, y, obj_player)))
{
	hsp = -2 * obj_player.xscale
}
if (place_meeting(x, y, obj_follower))
{
	var followid = instance_place(x, y, obj_follower)
	if (followid.count < count)
		hsp = -2 * followid.image_xscale
}
if (distance_to_object(obj_player) > 280)
{
	state = followerstates.teleport
}
if (x < obj_player.x && obj_player.xscale == -1) {
	if (x != obj_player.x + (count * sprite_get_width(sprite_index)))
		hsp = 3
}
if (x > obj_player.x && obj_player.xscale == 1) {
	if (x != obj_player.x - (count * sprite_get_width(sprite_index)))
		hsp = -3
}

}