var dis = point_distance(x,y,obj_player.x,obj_player.y);

if dis <= aggroRange 
{
	mp_potential_step(obj_player.x,obj_player.y,2,true);
	if (alarm[10] <= 0)
	{
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		var x_offset = lengthdir_x(20,dir);
		var y_offset = lengthdir_y(20,dir);
		
		var bullet = instance_create_layer(x+x_offset,y+y_offset,"Instances",obj_bullet);
		
		bullet.direction = dir;
		alarm[10] = 80 + random_range(1,50);
		
	}
}