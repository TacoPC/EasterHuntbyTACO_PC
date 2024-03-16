if menu == 1
{
	draw_set_alpha(0.5)
	draw_set_colour(c_white)
	draw_rectangle(0, 0, 256, 250, false)
	draw_set_alpha(1)
	draw_set_halign(1)
	draw_set_valign(1)
	scr_text_with_outline(128+(round(fakex*0.5)), 125+32+(round(fakey*0.5)), "YOU GOT AN EGG!", c_black, c_white)
	draw_sprite_ext(sprite_index, image_index, (128-16)+round(fakex), (125-16)+round(fakey), 2, 2, 0, c_white, 1)
	scr_text_with_outline(128+(round(fakex*0.5)), 125-32+(round(fakey*0.5)), "PRESS ENTER TO CONTINUE", c_black, c_white)
}