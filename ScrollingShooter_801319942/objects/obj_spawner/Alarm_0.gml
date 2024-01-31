/// @description Insert description here
// You can write your code in this editor

if y < room_height{
	x = irandom_range(sprite_width / 2, room_width - sprite_width / 2)
}

instance_create_layer(x, y, "Instances_1", objectType)
canSpawn = true
alarm[0] = spawnInterval

