/// @description Insert description here
// You can write your code in this editor


instance_create_layer(x, y, "Instances", obj_playerExplosion)

highscore_add(main_name, obj_scoreboard.points);
room_goto(Room_highscore);