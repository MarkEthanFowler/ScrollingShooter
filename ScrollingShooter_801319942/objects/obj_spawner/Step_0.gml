/// @description Insert description here
// You can write your code in this editor

if canSpawn == true
{
	canSpawn = false
	alarm[0] = spawnInterval
	//scr_spawner()
	instance_create_layer(x, y, "Instances_1", objectType)
}
