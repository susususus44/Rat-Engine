function scr_enemy_charging(){
	if (hsp != 0)
		image_xscale = sign(hsp)
	if (obj_player.x >= x)
	{	
		hsp = approach(hsp, 4, 0.1)
	}
	else
	{
		hsp = approach(hsp, -4, 0.1)
	}
}