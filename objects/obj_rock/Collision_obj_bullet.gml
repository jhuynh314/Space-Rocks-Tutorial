if (obj_game.powerup_time < 0)
	{
		var _powerup = choose(obj_powerup_spread, obj_powerup_ghost, obj_powerup_explode);
		instance_create_layer(x, y, "Instances", obj_powerup_explode);
		obj_game.powerup_time = 15;
	}

obj_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

audio_play_sound(snd_rockdestroy, 0, false, 1, 0 , random_range(0.6, 1.1));

direction = random(360);


if (obj_player && obj_player.powerup == 3)
{
	for (var i = 0; i < 6; ++i) {
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction = random(360);
	}
}

if sprite_index == spr_rock_big
	{
		sprite_index = spr_rock_small;
		instance_copy(true);
	}
else if instance_number(obj_rock) < 12
	{
		sprite_index = spr_rock_big;
		x = -100;
	}
else
	{
		instance_destroy();
	}