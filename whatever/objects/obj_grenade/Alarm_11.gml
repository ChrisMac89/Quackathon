/// @description Insert description here
// You can write your code in this editor

instance_destroy();
for(var i=0; i < 40; i++)
{
	instance_create_layer(x, y, layer, obj_blast);
	
	blastDirection += 100;
}