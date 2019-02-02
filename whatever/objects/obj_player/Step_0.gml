//Movement

var playerSpeed = 7;

if(keyboard_check(vk_right))
	x += playerSpeed;

if(keyboard_check(vk_left))
	x -= playerSpeed;

if(keyboard_check(vk_up))
	y -= playerSpeed;

if(keyboard_check(vk_down))
	y += playerSpeed;


//Shooting 
if(mouse_check_button(mb_left))
{
	instance_create_layer(x, y, layer, obj_bullet);
}