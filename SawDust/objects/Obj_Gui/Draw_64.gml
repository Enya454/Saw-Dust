//StartButton
if !global.start	//If wave not started
{
draw_set_color(c_navy)//Draw Color Navy
draw_rectangle(8,8,button_width+8,button_height+8,false)//Draw Outer Start Button
if collision_rectangle(8,8,button_width+8,button_height+8,Obj_MouseTracker,false,false)//If touching button
{
	draw_set_color(c_aqua)//Draw Color Aqua
	if (mouse_check_button_pressed(mb_left))//If clicked
	{
		global.start = true//Wave Start
	}
}
else//Else
{
draw_set_color(c_blue)//Draw Color Blue
}
draw_rectangle(16,16,button_width,button_height,false);//Draw Inner Start Button

//Formatting
draw_set_font(Font_Start)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color(c_white);//Draw Color White
draw_text(4+button_width/2,8+button_height/2,"Start")//Draw Text Start Button
}

//Inventory
if !global.start//If wave not started
{
draw_set_color(c_black)//Draw Color Black
for (var i = 0; i < array_length_1d(Inventory); i += 1)
   {
		draw_sprite(Spr_Box,0,room_width-buffer-(i*64)-(i*buffer),room_height-buffer);//Draw Box
		if collision_rectangle(room_width-buffer-(i*64)-(i*buffer),room_height-buffer,room_width-buffer-(i*64)-(i*buffer)-64,room_height-buffer-64,Obj_MouseTracker,false,false)// If mouse over box
		{
			draw_sprite_ext(Inventory[i].sprite_index,0,room_width-buffer-(i*64)-(i*buffer)-32,(room_height-buffer)-32,0.6,0.6,0,c_white,1)//Draw Item Small
			if mouse_check_button_pressed(mb_left)
			{
				Select = Inventory[i]
			}
		}
		else
		{
			draw_sprite_ext(Inventory[i].sprite_index,0,room_width-buffer-(i*64)-(i*buffer)-32,(room_height-buffer)-32,0.75,0.75,0,c_white,1)//Draw Item Large
		}
   }
}