if (curloaded != spritecount) {
	sprite_prefetch(curloaded)
	curloaded++
}
else
{
	room_goto(rm_RATENGINE)
}