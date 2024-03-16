timer++
if timer == 180
	audio_play_sound(sfx_step, 1, false)
if timer > 180 && on = 0 && keyboard_check_pressed(vk_enter)
{
	on = 1
	audio_stop_all()
	image_speed = 1
}