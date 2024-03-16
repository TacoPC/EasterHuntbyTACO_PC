ylogo -= ylogo * 0.1
if keyboard_check_pressed(vk_enter) && menupart == 0
{
	alarm[1] = 1
	audio_play_sound(sfx_select,1,false)
}
if keyboard_check_pressed(vk_enter) && menupart == 1
{
	audio_play_sound(sfx_select,1,false)
	if save == 1
		obj_fade.rm = hunt1
	else
		obj_fade.rm = hunt5
}
