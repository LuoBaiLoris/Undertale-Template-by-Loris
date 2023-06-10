/// @description Letter_Draw

for(var letter_index = 0;letter_index < array_length(letters);letter_index ++)
{
	var letter = letters[letter_index];
	
	if(letter.draw)
	{
		draw_set_font(letter.font)

		if(letter.shadow)
		{
			draw_text_transformed_color(letter.x + 1,letter.y + 1,letter.letter,letter.image_xscale,letter.image_yscale,letter.image_angle,c_blue,c_blue,c_blue,c_blue,letter.image_alpha)
		}

		draw_text_transformed_color(letter.x,letter.y,letter.letter,letter.image_xscale,letter.image_yscale,letter.image_angle,letter.color_0,letter.color_1,letter.color_2,letter.color_3,letter.image_alpha)
	}
}
