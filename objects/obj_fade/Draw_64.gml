var alpha2 = round((alpha*20)/2)/10
if fadeaway == 1
	alpha2 = alpha
draw_set_alpha(alpha2)
draw_set_colour(c_black)
draw_rectangle(0,0,256,250,false)
draw_set_alpha(1)