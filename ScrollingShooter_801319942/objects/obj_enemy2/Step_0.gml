/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited(); 

if canShoot == true
{
	canShoot = false
	alarm[0] = shotInterval
	instance_create_layer(x, y, "Instances", obj_enemyBullet1)
}