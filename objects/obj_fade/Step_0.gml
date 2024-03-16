if rm != -1
{
	if alpha < 0
		alpha = 0
	if fadeaway == 0
		alpha += 0.02
	else
	{
		alpha += 0.0005
		audio_sound_gain(sfx_tone, alpha, 0)
		audio_sound_gain(mu_menu, (-alpha)+1, 0)
	}
	if alpha >= 1
	{
		room_goto(rm)
		rm = -1
	}
}
else
{
	if fadeaway == 0	
		alpha -= 0.02
	else
		alpha -= 0.005
}