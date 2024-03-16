y = -96
speed = 6
image_blend = c_black
walk = audio_play_sound(sfx_step, 1, true)
audio_play_sound(sfx_tone, 1, true)
timer = 0
ini_open(working_directory + "save.ini")
ini_write_real("Save", "Part", 2)
ini_close()