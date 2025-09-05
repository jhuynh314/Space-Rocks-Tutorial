if (obj_game.powerup_time < 0)
	{
		var _powerup = choose(obj_powerup_spread, obj_powerup_ghost, obj_powerup_explode);
		instance_create_layer(x, y, "Instances", _powerup);
		obj_game.powerup_time = 15;
	}

obj_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

audio_play_sound(snd_rockdestroy, 0, false, 1, 0 , random_range(0.6, 1.1));

direction = random(360);


if (obj_player.powerup == 3)
{
	for (var i = 0; i < 5; ++i) {
		if instance_number(obj_bullet) < 50 {
			var _direction = random(360)
			var _bullet = instance_create_layer(x + (80*cos(degtorad(_direction))), y - (80*sin(degtorad(_direction))), "Instances", obj_bullet);
			_bullet.direction = _direction;
		}
	}
}

if sprite_index == spr_rock_big
	{
		sprite_index = spr_rock_small;
		instance_copy(true);
	}
else if instance_number(obj_rock) < 40
	{
		var _choice = choose(true, false)
		sprite_index = spr_rock_big;
		if (_choice){
			x = -100;
		} else {
			y = -100;
		}
	}
else
	{
		instance_destroy();
	}