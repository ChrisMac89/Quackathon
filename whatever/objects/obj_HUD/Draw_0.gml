/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player))
{
	draw_text(obj_player.x -8, obj_player.y - 30, string(playerHealth));
}