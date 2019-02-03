/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x + hspeed, y, object4))
{
    direction = -direction + 180;
	wallsHit += 1;
	
	if(wallsHit == 2)
	{
		instance_destroy();	
	}
}

//Vertical bounce
if(place_meeting(x, y + vspeed, object4))
{
    direction = -direction;
	wallsHit += 1;
	
	if(wallsHit == 2)
	{
		instance_destroy();	
	}
}