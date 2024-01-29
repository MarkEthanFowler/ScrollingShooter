//Player Movement
var min_val = 4

x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

if keyboard_check(vk_left)
{
	x -= 4
}
if keyboard_check(vk_right)
{
	x += 4
}
if keyboard_check(vk_up)
{
	vspeed = clamp(vspeed, min(-1), max(-4))
}
if keyboard_check(vk_down)
{
	vspeed = clamp(vspeed, min_val, layer_get_vspeed("Background"))
}

//If neither UP or DOWN is pressed, slow down
//Will Continue to go in the direction regadless if the button is pressed without this
if not keyboard_check(vk_down) and not keyboard_check(vk_up)
{
	vspeed -= sign(vspeed)
}

if keyboard_check_pressed(ord("R"))
{
	game_restart()
}

if _player_health <= 0
{
	instance_destroy()
}

if canShoot == true and keyboard_check_direct(vk_space)
{
	canShoot = false
	alarm[0] = game_get_speed(gamespeed_fps) / 2
	instance_create_layer(x, y, "Instances", obj_playerBullet)
}