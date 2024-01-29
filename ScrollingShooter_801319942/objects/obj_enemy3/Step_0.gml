/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
if !obj_player
{
	direction = 270
}

if canShoot == true
{
	canShoot = false
	alarm[0] = shotInterval
	with(instance_create_layer(x, y, "Instances", obj_enemyBullet1))
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		speed = 10
	}
}