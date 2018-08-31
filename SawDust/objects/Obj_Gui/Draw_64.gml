//StartButton
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
draw_set_font(Font_Start)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_text(4+button_width/2,8+button_height/2,"Start")
}

//Inventory
if !global.start
{
draw_set_color(c_black)
for (var i = 0; i < array_length_1d(Inventory); i += 1)
   {
		draw_sprite(Spr_Box,0,room_width-buffer-(i*64)-(i*buffer),room_height-buffer);
		if collision_rectangle(room_width-buffer-(i*64)-(i*buffer),room_height-buffer,room_width-buffer-(i*64)-(i*buffer)-64,room_height-buffer-64,Obj_MouseTracker,false,false)
		{
			draw_sprite_ext(Inventory[i].sprite_index,0,room_width-buffer-(i*64)-(i*buffer)-32,(room_height-buffer)-32,0.6,0.6,0,c_white,1)
		}
		else
		{
			draw_sprite_ext(Inventory[i].sprite_index,0,room_width-buffer-(i*64)-(i*buffer)-32,(room_height-buffer)-32,0.75,0.75,0,c_white,1)
		}
   }
}