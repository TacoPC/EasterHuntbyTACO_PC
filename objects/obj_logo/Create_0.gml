ini_open(working_directory + "save.ini")
save = ini_read_real("Save", "Part", 1)
xlogo = 0
ylogo = -256
part = 0
menupart = 0
alarm[0] = 10
global.eggs = 0
if round(save) == 1
{
	audio_play_sound(mu_menu,10,true)
	audio_sound_loop_start(mu_menu, 0)
	audio_sound_loop_end(mu_menu, 9.59)
}
if round(save) == 2
{
	global.eggs = 24
	layer_destroy(layer_get_id("Backgrounds_1"))
	audio_play_sound(mu_menu,10,true,1,0,0.98)
	audio_sound_loop_start(mu_menu, 0)
	audio_sound_loop_end(mu_menu, 9.59)
}