with (instance_create(x, y, obj_follower))
	count = instance_number(obj_follower)
with (instance_create(x, y, obj_message))
{
	avatarspr = spr_cass
	str = "Hello Craig!"
}
instance_destroy()