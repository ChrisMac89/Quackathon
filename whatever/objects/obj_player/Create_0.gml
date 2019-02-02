/// @description Insert description here
// You can write your code in this editor
//Test comment
globalvar playerHealth;
playerHealth = 10000;



grav = 0.2;
hsp = 0; //horizontal speed
vsp = 0; //vertical speed
jumpspeed = 7;
movespeed = 4;
//for ledge assistance 
grace_jump_time = 0; //number of grace period frames after leaving the ground you can still jump
grace_timer = grace_jump_time;
//for input buffering
jump_buffer = 0; //number of grace period frames between player pressing jump and hitting the ground when they will still jump
jump_buffer_timer = jump_buffer;
