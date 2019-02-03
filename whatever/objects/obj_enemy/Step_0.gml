/// @description Insert description here
// You can write your code in this editor



// enemy death
script_execute(state);

if hp<=0
{
instance_destroy();
global.sccore +=5;
}

// Dead towards player

//mp_potential_step(obj_player.x,obj_player.y,2,true);