//Movement

globalvar playerSpeed;
globalvar isMoving;
globalvar playerHealth;
playerHealth = 100;

playerSpeed = 7;

if(keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	x += playerSpeed;
	sprite_index = spr_Right;
}

if(keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	x -= playerSpeed;
	sprite_index = spr_Left;
}

if(keyboard_check(vk_up) or keyboard_check(ord("W")))
	y -= playerSpeed;

if(keyboard_check(vk_down) or keyboard_check(ord("S")))
	y += playerSpeed;

if((!keyboard_check(vk_down)) and (!keyboard_check(vk_up)) and (!keyboard_check(vk_left)) and (!keyboard_check(vk_right)) and !(keyboard_check(ord("D")))  and !(keyboard_check(ord("A"))) and !(keyboard_check(ord("S"))) and !(keyboard_check(ord("W"))))
{
	isMoving = "false";
	playerHealth -= 1;
}
else
	isMoving = "true";


//Shooting 
if(mouse_check_button(mb_left))
{
	instance_create_layer(x, y, layer, obj_bullet);
}
