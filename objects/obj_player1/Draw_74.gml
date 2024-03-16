draw_set_halign(1)
draw_set_valign(1)
var txt = string_concat("YOU HAVE ", global.eggs, " EGG! KEEP GOING.")
if global.eggs == 8 && on == 2
	txt = string_concat("That's it, i'll force you.")
else if global.eggs == 8 && on == 1
	txt = string_concat("Get out of here now,\nsomeone is after you.")
else if global.eggs == 8
	txt = string_concat("GREAT YOU GOT ALL EGGS!")
else if global.eggs != 1
	txt = string_concat("YOU HAVE ", global.eggs, " EGGS! KEEP GOING.")
scr_text_with_outline(128, 14, txt, c_black, c_white)