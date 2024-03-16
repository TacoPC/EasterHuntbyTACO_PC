draw_set_halign(1)
draw_set_valign(1)
var txt = string_concat("YOU HAVE ", global.eggs, " EGG! KEEP GOING.")
if global.eggs == 8 && on == 2
	txt = string_concat("")
else if global.eggs == 8 && on == 1
	txt = string_concat("Ok, we are here now.\nJust continue.")
else if global.eggs == 16
{
	txt = string_concat("He is here.")
	if on == 0
		alarm[1] = 60
	on = 1
	with(obj_egg)
	{
		instance_destroy()
	}
}
else if global.eggs != 1
	txt = string_concat("YOU HAVE ", global.eggs, " EGGS! KEEP GOING.")
scr_text_with_outline(128, 14, txt, c_black, c_white)