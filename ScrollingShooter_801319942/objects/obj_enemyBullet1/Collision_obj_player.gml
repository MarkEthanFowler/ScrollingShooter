/// @description Insert description here
// You can write your code in this editor

instance_destroy()

audio_play_sound(snd_explosion1, 1, false)

inflict_damage(10)

if obj_player._player_health <= 0
{
		instance_destroy(other)
}
