if collected == 1 || (othermenu == 1 && othermenu2 != 8)
	exit
if choose(1,2) == 2
{
	fakex = 0
	fakey = choose(-30, 30)
}
else
{
	fakex = choose(-30, 30)
	fakey = 0
}
global.eggs++
image_alpha = 0.5
audio_play_sound(choose(sfx_collect1, sfx_collect2, sfx_collect3, sfx_collect4), 1, false)
collected = 1
menu = 1