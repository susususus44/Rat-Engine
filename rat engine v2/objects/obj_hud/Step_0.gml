index++
if obj_pause.paused
	target = -4
else
	target = obj_player
if (collect != global.collect) {
	collecttimer = 80
	collect = global.collect
}
collecttimer--
if target != -4
	drawycollect = 150
else
	drawycollect = lerp(drawycollect, 0, 0.2)