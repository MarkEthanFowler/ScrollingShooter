/// @description Insert description here
// You can write your code in this editor

instance_destroy()

inflict_damage(10)

if obj_player._player_health <= 0
{
		instance_destroy(other)
}
