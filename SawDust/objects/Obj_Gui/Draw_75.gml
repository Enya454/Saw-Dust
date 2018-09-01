//If Game Not Started and Item Still in stock
if !global.start && InvAmmo[SelectInv] > 0
{
	//If Item is selected
if Select != noone
{
	//Draw Ghost Sprite snapped to 32 bit grid
	draw_sprite_ext(Select.sprite_index,0,round(mouse_x/32)*32,round(mouse_y/32)*32,1,1,0,c_white,0.8)
}
//If Mouse Released
if mouse_check_button_released(mb_left) && Select != noone
{
	//Get New Item ID
	var created = instance_create_layer(round(mouse_x/32)*32,round(mouse_y/32)*32,"Instances",Select)
	with created
	{
		//If New Item is Colliding with other Item
		if place_meeting(mouse_x,mouse_y,Obj_Gui.Select)
		{
			//Destroy self
			instance_destroy();
		}
	}
	//If it still exists
	if instance_exists(created)
	{
		//Lower the ammount
	InvAmmo[SelectInv] -= 1
	}
	//Deselect it
	Select = noone;
}
}