ds_queue_enqueue(followqueue, obj_player.x)
ds_queue_enqueue(followqueue, obj_player.y - 2)
if (abs((x - obj_player.x)) > 0)
    image_xscale = sign((obj_player.x - x))
offsetxactual = approach(offsetxactual, offsetx, 1)
if (ds_queue_size(followqueue) > (lag_step * 3))
{
	if (place_meeting(x, y, obj_slope))
		offsety = offsetxactual / 1.4
	else
		offsety = 0
    x = ds_queue_dequeue(followqueue) - (image_xscale * 4) - offsetxactual
    y = ds_queue_dequeue(followqueue) - 7 - offsety
}