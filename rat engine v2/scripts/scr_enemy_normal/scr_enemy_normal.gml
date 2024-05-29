function scr_enemy_normal(){
	hsp = (movespeed * image_xscale)
	var goingtoturn = ((((!canfall ? !place_meeting(x + 20 * image_xscale, y + 2, par_collision) : 0) && grounded) && !place_meeting_slope(x, y +1)) || place_meeting_solid((x + 1 * image_xscale), y - 3))
	if (goingtoturn) {
		image_xscale *= -1
	}
}