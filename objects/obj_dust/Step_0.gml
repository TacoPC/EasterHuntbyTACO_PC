image_angle += 1
image_alpha -= 0.015
image_xscale += 0.01
image_yscale += 0.01
if image_alpha <= 0
	instance_destroy()