/// @description Insert description here
// You can write your code in this editor

// Moves instance away from wall  (Provides Object Overlap Protection)
var dir;
var move_dis = 32;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    dir = random(360);

// Move in opposite direction of object in collision
else
    dir = point_direction(other.x,other.y,x,y);

// Move to new location but away from char and other enemy

var dx = lengthdir_x(move_dis,dir);
var dy = lengthdir_y(move_dis,dir);

if (!place_meeting(x+dx,y,char)) x += dx;
if (!place_meeting(x,y+dy,char)) y += dy;
if (!place_meeting(x+dx,y,obj_enemy)) x+=dx;
if (!place_meeting(y,y+dy,obj_enemy)) y +=dy;


move_wrap(false, false, 0)

if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}

// New Proximity Trigger for Chase (Only one for life of instance)
if chase=true && distance_to_object(char) < 400{
    move_towards_point(char.x,char.y,5);
}

// Death or enemy HP loss
if hp <= 0 {
   instance_destroy(self);
}