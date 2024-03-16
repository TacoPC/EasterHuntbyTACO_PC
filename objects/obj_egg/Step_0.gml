randomize()
othermenu2 = 0
with(obj_egg)
{
	if menu == 1 && id != other.id
		other.othermenu = 1
	if menu == 0
		other.othermenu2++
}
if menu == 1
{
	fakex -= fakex * 0.175
	fakey -= fakey * 0.175
	if keyboard_check_pressed(vk_enter)
	{
		if global.eggs == 8
		{
			obj_player1.alarm[0] = 240
			obj_player1.alarm[1] = 240*2.5
		}
		if global.eggs == 24
		{
			obj_player4.alarm[2] = 240
		}
		if global.eggs == 32
		{
			obj_player5.alarm[0] = 1
		}
		if global.eggs == 33
		{
			obj_fade.fadeaway = 1
			obj_fade.rm = hunt7
			audio_play_sound(sfx_tone,10,true,1)
		}
		menu = 0
		audio_play_sound(sfx_step, 1, false)
	}
}