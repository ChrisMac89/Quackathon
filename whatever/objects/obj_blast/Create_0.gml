//Motion


var angleX = random_range(0, 1920);
var angleY = random_range(0, 1920);

direction = point_direction(x,y, angleX, angleY);
speed = 12;
image_angle = direction;


globalvar wallsHit;
wallsHit = 0;