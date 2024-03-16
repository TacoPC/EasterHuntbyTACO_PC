direction = point_direction(x,y,obj_player4.x,obj_player4.y)
image_angle = round(direction/90)*90

audio_sound_gain(walk, (-distance_to_object(obj_player4) + 250) / 250, 0)
audio_sound_gain(sfx_tone, (-distance_to_object(obj_player4) + 750) / 750, 0)

timer++
image_xscale = ((sin(timer)+1)/12.5)+1
image_yscale = image_xscale

if random_range(0, 75) < 50
	exit

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