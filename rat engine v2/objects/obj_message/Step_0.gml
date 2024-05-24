if (timer > 0)
{
	ybox = approach(ybox, 20, 2)
	xavatar = approach(xavatar, 0, 5)
	timer--
}
else
{
	ybox = approach(ybox, 0, 2)
	xavatar = approach(xavatar, 100, 5)
	if (xavatar == 100)
		instance_destroy()
}