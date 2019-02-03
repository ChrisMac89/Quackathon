/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(view_xview[0]+10, view_yview[0]+10, "Score:"+string (global.sccore));
draw_text(view_xview[0]+10, view_yview[0]+30, "Health:"+string (obj_player.hp));
