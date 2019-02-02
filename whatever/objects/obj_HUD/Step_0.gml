/// @description Insert description here
// You can write your code in this editor
var HUD_speed = playerSpeed;

if(keyboard_check(vk_right))
	x += HUD_speed;

if(keyboard_check(vk_left))
	x -= HUD_speed;

if(keyboard_check(vk_up))
	y -= HUD_speed;

if(keyboard_check(vk_down))
	y += HUD_speed;


