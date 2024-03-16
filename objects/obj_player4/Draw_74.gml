draw_set_halign(1)
draw_set_valign(1)
var txt = string_concat("YOU HAVE ", global.eggs, " EGG! KEEP GOING.")
if on == 2
	txt = string_concat("Sorry, false alarm.")
else if on == 1
	txt = string_concat("I thought he was here.")
else if global.eggs >= 16 && global.eggs != 24
	txt = choose(string_concat("GREAT YOU GOT ALL EGGS!"), string_concat("GREAT YOU GOT ALL EGGS!"), "Keep collecting eggs,\nthere's still more.")
else if global.eggs == 24 && !instance_exists(obj_he)
	txt = string_concat("Good, you got the eggs.")
else if global.eggs == 24 && instance_exists(obj_he)
	txt = string_concat("He hunting you down.")
else if global.eggs != 1
	txt = string_concat("YOU HAVE ", global.eggs, " EGGS! KEEP GOING.")
scr_text_with_outline(128, 14, txt, c_black, c_white)