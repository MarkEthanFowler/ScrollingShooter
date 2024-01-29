/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_player)
{
	speed = 10
	direction = clamp(270, 240, 300)
}
else 
{
	speed = 10
	direction = clamp(point_direction(x, y, obj_player.x, obj_player.y), 240, 300)
}
	

