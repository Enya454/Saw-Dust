if Select != noone
{
	draw_sprite_ext(Select.sprite_index,0,round(mouse_x/32)*32,round(mouse_y/32)*32,1,1,0,c_white,0.8)
}
if mouse_check_button_released(mb_left)			
{
	if Select!= noone
	{
	instance_create_layer(round(mouse_x/32)*32,round(mouse_y/32)*32,"Instances",Select)
	Select = noone;
	}
}