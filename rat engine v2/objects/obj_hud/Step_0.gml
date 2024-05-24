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
	drawycollect = lerp(drawycollect, (obj_pause.paused == 1 || collecttimer > 0 || target.hsp == 0 && target.move = 0 ? 0 : 150), 0.1 + (collecttimer > 0) * 0.1)
else
	drawycollect = lerp(drawycollect, 0, 0.2)