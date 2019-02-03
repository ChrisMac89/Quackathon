/// @description Insert description here
// You can write your code in this editor
var travelled = point_distance(xstart,ystart,x,y);
var frac1 = travelled/target_d; // 0-1 convertion
var a = frac1 * 180; //convert to 0-180;
var sina = dsin(a); //0 to -1
var height = sina * peek_height; //0 to -100
//draw the image but convert the straight motion into a curve (visually)
draw_sprite(sprite_index,-1,x,y+height); // draw at y+ (0 through -100 back to 0);