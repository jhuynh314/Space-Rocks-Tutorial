if (alive)
{
	if (powerup == 2) exit

	powerup = 0;

	effect_create_above(ef_firework,x,y,1,c_red);

	alive = false;
	image_alpha = 0

	audio_play_sound(snd_lose, 0, false);
	audio_stop_sound(snd_music);

	obj_game.alarm[0] = 120;	
}