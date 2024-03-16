hsp = 0
vsp = 0
hsp2 = hsp*45
vsp2 = vsp*45
angle = 0
camx = 0
camy = 0
timer = 0
steped = false
movex = 0
movey = 0
mousetempx = -1000
mousetempy = -1000
fakex = 0
on = 0
randomize()
repeat(8)
	instance_create_depth(irandom(floor(room_width/96)*96), irandom(floor(room_height/96)*96), depth + 1, obj_egg)