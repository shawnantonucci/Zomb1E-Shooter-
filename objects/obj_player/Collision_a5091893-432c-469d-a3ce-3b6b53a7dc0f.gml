global.hp -= 1;
with other 
{
	audio_play_sound(snd_hit,1,false);
	instance_destroy();
}