if on == 2
{
	movex = 0
	movey = 0
}
else if on != 2 && on != 1
{
	movex = -keyboard_check(vk_left) + keyboard_check(vk_right)
	movey = -keyboard_check(vk_up) + keyboard_check(vk_down)
}
else if on == 1
{
	movex = 0
	movey = 0
}

with(obj_egg)
{
	if menu == 1
	{
		other.movex = 0
		other.movey = 0
	}
}

hsp -= (hsp - (movex * 2)) * 0.125
vsp -= (vsp - (movey * 2)) * 0.125

image_angle = point_direction(x,y,mouse_x,mouse_y)
x += hsp
y += vsp

camx -= (camx - (x+lengthdir_x(25,image_angle))) * 0.125
camy -= (camy - (y+lengthdir_y(25,image_angle))) * 0.125
image_angle = (round(image_angle/90))*90
if movex != 0 || movey != 0
	timer += 0.35
/*
image_xscale = ((sin(timer)+1)/12.5)+1
image_yscale = image_xscale

if movex == 0 && movey == 0
{
	image_xscale = 1
	image_yscale = 1
}
else if image_xscale < 1.1 && !steped
{
	audio_play_sound(sfx_step,1,false,1,0,random_range(0.95,1.05))
	with(instance_create_depth(x+lengthdir_x(random_range(3, 6),image_angle+90),y+lengthdir_y(random_range(3, 6),image_angle+90),depth+1,obj_dust))
	{
		image_angle = irandom_range(0, 359)
		image_xscale = random_range(0.3, 0.5)
		image_yscale = image_xscale
	}
	with(instance_create_depth(x+lengthdir_x(random_range(3, 6),image_angle-90),y+lengthdir_y(random_range(3, 6),image_angle-90),depth+1,obj_dust))
	{
		image_angle = irandom_range(0, 359)
		image_xscale = random_range(0.3, 0.5)
		image_yscale = image_xscale
	}
	steped = true
}
else if image_xscale > 1.1 && steped
	steped = false
*/

var camxtemp = clamp(((round(camx)/4)*4)-128, 0, room_width-256)
var camytemp = clamp(((round(camy)/4)*4)-125, 0, room_height-250)

camera_set_view_pos(view_camera[0], round(camxtemp), round(camytemp))