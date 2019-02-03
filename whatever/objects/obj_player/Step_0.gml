
//Movement
globalvar playerSpeed;
globalvar isMoving;
var deathZoneDamage = 20;




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
	//hp -= 1;
}
else
	isMoving = "true";


//Shooting 
if(weapon)
{
if(mouse_check_button(mb_left))
{
	instance_create_layer(x, y, layer, obj_bullet);
	audio_play_sound(snd_shoot, 10, false);
}
}

if(mouse_check_button(mb_right))
{
	instance_create_layer(x, y, layer, obj_grenade);
	audio_play_sound(snd_shoot, 10, false);
}


// test code below

//Get the player's input
key_right = keyboard_check(vk_right);
//key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(vk_left);
//original non-variable jumping
key_jump = keyboard_check_pressed(vk_space);
//for variable jumping
key_jump_held = keyboard_check(vk_space);
//for ledge assistance
is_on_ground = false;
//for jump input buffering
jump_is_inside_buffer = false;


//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp+= grav;

//if you're on the ground, you can jump (base tutorial version)
//if (place_meeting(x,y+1,obj_wall))
//{
  //  vsp = key_jump * -jumpspeed;
//}

//For Ledge Assistance with input buffering
if (place_meeting(x,y+1,object4))
{
    is_on_ground = true;
    grace_timer = grace_jump_time;
}
else{
    is_on_ground = false;
    grace_timer--;
}

//if you just want to see ledge assistance without input buffering
/*
if (key_jump)
{
    if (is_on_ground || grace_timer >0)
    {
        vsp = key_jump * -jumpspeed;
        grace_timer = 0;
    }
}
*/

//Jump Input Buffering
if (key_jump)
{
    jump_buffer_timer = jump_buffer;
}


if (jump_buffer_timer > 0)
{
    jump_is_inside_buffer = true;
}
else
{
    jump_is_inside_buffer = false;
}
//this is sort of a failsafe for when the buffer frames are set to 0, just use the old jump
if (jump_buffer = 0){
    jump_is_inside_buffer = key_jump;
}
if(jump_is_inside_buffer)
{
    if (is_on_ground || grace_timer >0)
    {
        //vsp = key_jump * -jumpspeed;
        vsp = -jumpspeed;
        grace_timer = 0;
        jump_buffer_timer = 0;
    }
    jump_buffer_timer--;
}

if(touchingGreen and (object19.visible == true))
{
	vsp = -jumpspeed * 1.5;
	
	
	touchingGreen = false;
	hp -= deathZoneDamage;
}

if(touchingBlue and (object22.visible == true))
{
	vsp = -jumpspeed * 1.5;
	
	
	touchingBlue = false;
	hp -= deathZoneDamage;
}

if(touching23 and (object23.visible == true))
{
	vsp = -jumpspeed * 1.5;
	
	
	touching23 = false;
	hp -= deathZoneDamage;
}

if(touching24 and (object24.visible == true))
{
	hsp = jumpspeed * 2;
	
	
	touching24 = false;
	
	hp -= deathZoneDamage;
}

if(touching25 and (object25.visible == true))
{
	vsp = jumpspeed * 1.5;
	
	
	touching25 = false;
	
	hp -= deathZoneDamage;
}

if(touching26 and (object26.visible == true))
{
	vsp = jumpspeed * 1.5;
	
	
	touching26 = false;
	
	hp -= deathZoneDamage;
}

if(touching27 and (object27.visible == true))
{
	vsp = jumpspeed * 1.5;
	
	
	touching27 = false;
	
	hp -= deathZoneDamage;
}




//for variable jumping
//if(vsp <0 && !key_jump_held) vsp = max(vsp,0)


//Horizontal Collision
if (place_meeting(x+hsp, y, object4))
{
    while(!place_meeting(x+sign(hsp),y,object4))
    {
        x+= sign(hsp);
    }
    hsp=0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, object4))
{
    while(!place_meeting(x,y+sign(vsp),object4))
    {
        y+= sign(vsp);
    }
    vsp=0;
}


y += vsp;

/* */
/*  */


// player death
image_alpha = hp/100;

if hp<= 0 
game_end();


