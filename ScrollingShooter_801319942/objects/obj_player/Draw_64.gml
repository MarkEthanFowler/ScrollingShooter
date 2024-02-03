/// @description Insert description here
// You can write your code in this editor

if paused == true
{
	if !surface_exists(paused_surf)
	{
		if paused_surf == -1
		{
			instance_deactivate_all(true);
			audio_pause_all();
		}
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(paused_surf, 0, 0);
		surface_reset_target();
	}
	else
	{
		draw_surface(paused_surf, 0, 0);
		draw_rectangle_colour(0, 0, room_width, room_height, c_blue, c_blue, c_aqua, c_aqua, false);
		draw_text(600, room_height / 2, "PAUSED\n(ALT+P)")
		draw_set_font(pause_font);
    }
}
else
{
	
	audio_resume_all()
}

