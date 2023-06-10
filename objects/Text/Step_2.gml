/// @description Letter_Step

for(var letter_index = 0;letter_index < array_length(letters);letter_index ++)
{
	if(not letters[letter_index].draw)
	{
		continue;
	}
	
	var text = self;
	
	with(letters[letter_index])
	{
	
		timer ++;

		if(ease_In == true)	
		{
			x += (letter_x - x) * 0.2
			y += (letter_y - y) * 0.2
			image_alpha += (letter_alpha - image_alpha) * 0.2
			if((x > letter_x - 0.1 and x <= letter_x)or(x < letter_x + 0.1 and x >= letter_x))
			{
				x = letter_x;
			}
			if((y > letter_y - 0.1 and y <= letter_y)or(y < letter_y + 0.1 and y >= letter_y))
			{
				y = letter_y;
			}
			if((image_alpha > letter_alpha - 0.1 and image_alpha <= letter_alpha)or(image_alpha < letter_alpha + 0.1 and image_alpha >= letter_alpha))
			{
				image_alpha = letter_alpha;
			}
			if((x == letter_x)&&(y == letter_y)&&(image_alpha == letter_alpha))
			{
				ease_In = false;
			}
		}
		else
		{
			if(ease_Out)
			{
				if(final_end)
				{
					switch(ease_Out_Mode)
					{
						case "Up":
							y -= 1
							break;
						case "Down":
							y += 1
							break;
						case "Left":
							x -= 1
							break;
						case "Right":
							x += 1
							break;
						case "Alpha":
							break;
					}
					image_alpha -= 0.1
				}
			}
			else
			{
				if(timer % shake_space_timer == 0)
				{
					if(shake_random_mode == "float")
					{
						x = letter_x + random_range(-shake_amplitude,shake_amplitude);
						y = letter_y + random_range(-shake_amplitude,shake_amplitude);
					}
					else if(shake_random_mode == "int")
					{
						x = letter_x + irandom_range(-shake_amplitude,shake_amplitude);
						y = letter_y + irandom_range(-shake_amplitude,shake_amplitude);
					}
				}

				if(random_timer < random_shake_timer)
				{
					random_timer ++;
					if(random_timer % shake_space_timer == 0)
					{
						if(shake_random_mode == "float")
						{
							x = letter_x + random_range(-random_shake_amplitude,random_shake_amplitude);
							y = letter_y + random_range(-random_shake_amplitude,random_shake_amplitude);
						}
						else if(shake_random_mode == "int")
						{
							x = letter_x + irandom_range(-random_shake_amplitude,random_shake_amplitude);
							y = letter_y + irandom_range(-random_shake_amplitude,random_shake_amplitude);
						}
					}
				}
			}
		}
	}
}
