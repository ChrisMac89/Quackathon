/// @description Insert description here
// You can write your code in this editor

gravity = 0.4;

globalvar blastDirection;
blastDirection = 0;

alarm[11] = 2*room_speed;

target_x = 360;
target_y = 175;
target_d = point_distance(x,y,target_x,target_y); //distance
direction = point_direction(x,y,mouse_x,mouse_y); //toward target destination
speed = 7; //at speed, in a straight line
peek_height = 100; //H