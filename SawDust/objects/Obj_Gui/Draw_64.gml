if !global.start
{
draw_set_color(c_navy)
draw_rectangle(8,8,button_width+8,button_height+8,false)
if collision_rectangle(8,8,button_width+8,button_height+8,Obj_MouseTracker,false,false)
{
	draw_set_color(c_aqua)
	if (mouse_check_button_pressed(mb_left))
	{
		global.start = true
	}
}
else
{
draw_set_color(c_blue)
}
draw_rectangle(16,16,button_width,button_height,false);
}