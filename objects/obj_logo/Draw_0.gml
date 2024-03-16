if menupart == 0
{
	if save == 1
		draw_sprite(spr_hunt, 0, xlogo, ylogo)
	draw_set_font(Font1)
	draw_set_halign(1)
	draw_set_valign(1)
	scr_text_with_outline(128 + (-xlogo - 3), 225, "PRESS ENTER TO START", c_black, c_white)
}
if menupart == 1
{
	draw_set_font(Font1)
	draw_set_halign(1)
	draw_set_valign(1)
	scr_text_with_outline(128 + (-xlogo - 3), 250/2, "ARROWS KEY TO MOVE\n\n\nCLICK EGGS TO COLLECT\n\nOR\n\nWALK INTO EGGS TO COLLECT\n\n\n\nPRESS ENTER TO PLAY", c_black, c_white)
}