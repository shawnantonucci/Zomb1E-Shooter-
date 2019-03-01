hp -= 6;
//we turn red
image_blend = c_red;
alarm[0] = 4;
audio_play_sound(snd_hit,1,false);
with other
{
	instance_destroy();
}