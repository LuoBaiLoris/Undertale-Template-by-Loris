/// @description Step

if(canskip && not skip && (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")))){
	skip = true;
}

random_shake_timer_ ++;

if(skip)
{
	printer_number = string_length(text) - printer_count + 1;
	wait_timer = 0
}

if(wait_timer <= 0)
{
	timer ++;
	if(string_copy(text,printer_count+1,11) == "{page:next}")
	{
		page_new = false;
		printer_count += 11;
		for(var index = 0;index < array_length(letters);index ++)
		{
			if(not letters[index].ease_Out)
			{
				letters[index].draw = false;
				letters[index].image_alpha = 0;
			}
			else
			{
				letters[index].final_end = true;
			}
		}
	}
	if(timer % space_timer == 0 && printer_count < string_length(text) && not page_new)
	{
		for(var printer_timers = 0;printer_timers < printer_number;printer_timers ++)
		{
			printer_count ++;
			printer_count_real ++;
 			while string_char_at(text,printer_count) == "@"
			{
				if(printer_count > 1)
				{
					if(string_char_at(text,printer_count - 1) == "@")
					{
						escape = not escape;
						printer_count ++;
					}
					else
					{
						escape = true;
						break;
					}
				}
			}
			while(string_char_at(text,printer_count) == "{")
			{
				var command = true;
				if(string_char_at(text,printer_count - 1) == "@")
				{
					escape = !escape;
					break;
				}
				else
				{
					command = true;
				}
				if(command)
				{
					if(page_new)
					{
						break;
					}
					var notme = false;
					if(string_copy(text,printer_count,3) == "{*}")
					{
						text_font = font_eng;
						text = string_insert("* ",text,printer_count+3)
						printer_count += 3;
						repeat(2)
						{
							draw_set_font(text_font);
							var letter =
							{
								x : x,
								y : y - string_height(string_char_at(text,printer_count)) / 2,
								draw : true,
				
				
								letter : "",

								letter_x : x,
								letter_y : y,
								letter_alpha : 1,

								font : font_eng,

								color_0 : c_white,
								color_1 : c_white,
								color_2 : c_white,
								color_3 : c_white,

								timer : 0,
								random_timer : 0,

								shake_amplitude : 0,
								shake_space_timer : 1,
								shake_random_mode : "float",
								random_shake_amplitude : 0,
								random_shake_timer : 1,

								shadow : true,

								ease_In : true,
								ease_Out : false,
								ease_In_Mode : "Down",
								ease_Out_Mode : "Up",
								final_end : false

							}
							if(ease_In == true)
							{
								switch(ease_In_Mode)
								{
									case "Up":
										letter.y -= 10;
										break;
									case "Down":
										letter.y += 10;
										break;
									case "Left":
										letter.x -= 10;
										break;
									case "Right":
										letter.x += 10;
										break;
									case "Alpha":
										break;
								}
								letter.image_alpha = 0;
							}
							else
							{
								letter.image_alpha = image_alpha;
				
							}
							letter.letter_x = x;
							letter.letter_y = y - string_height(string_char_at(text,printer_count)) / 2;
							letter.image_xscale = image_xscale;
							letter.image_yscale = image_yscale;
							letter.image_angle = image_angle;
							letter.letter_alpha = image_alpha;
							letter.letter = string_char_at(text,printer_count);
							letter.font = text_font;
							letter.color_0 = make_color_rgb(text_color[0][0],text_color[0][1],text_color[0][2]);
							letter.color_1 = make_color_rgb(text_color[1][0],text_color[1][1],text_color[1][2]);
							letter.color_2 = make_color_rgb(text_color[2][0],text_color[2][1],text_color[2][2]);
							letter.color_3 = make_color_rgb(text_color[3][0],text_color[3][1],text_color[3][2]);
							letter.shake_amplitude = shake_amplitude;
							letter.shake_space_timer = shake_space_timer;
							letter.shake_random_mode = shake_random_mode;
							letter.shadow = shadow;
							letter.ease_In = ease_In;
							letter.ease_Out = ease_Out;
							letter.ease_In_Mode = ease_In_Mode;
							letter.ease_Out_Mode = ease_Out_Mode;
							array_insert(letters,array_length(letters),letter);
							x += string_width(letter.letter) + space_x;
							if(printer_count_real >= printer_number_max)
							{
								x = text_x;
								y += string_height(letter.letter) + space_y;
								printer_count_real = 0;
							}
							printer_count ++
							printer_count_real ++
						}
						text_font = text_font_old;
					}
					else if(string_copy(text,printer_count,6) == "{wait:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								if(not skip)
								{
									wait_timer = string_digits(string_copy(text,printer_count + 6,letter_pos));
								}
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{heal:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Player_Heal(string_digits(string_copy(text,printer_count + 6,letter_pos)),true) ;
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{hurt:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Player_Hurt(string_digits(string_copy(text,printer_count + 6,letter_pos)),0.7,HurtMode.Normal,true) ;
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{body:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Enemy0.body_index = string_digits(string_copy(text,printer_count + 6,letter_pos))
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{head:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Enemy0.head_index = string_digits(string_copy(text,printer_count + 6,letter_pos))
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{font:")
					{
						var string_font = ""
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								string_font = string_copy(text,printer_count + 6,letter_pos);
								printer_count += 6 + letter_pos + 1;
								break;
							}
							else
							{
								if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
								{
									notme = true;
									break;
								}
							}
						}
						if(asset_get_index(string_font) == -1)
						{
							notme = true;
						}
						else
						{
							text_font = asset_get_index(string_font);
							text_font_old = text_font
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,7) == "{voice:")
					{
						var string_voice = ""
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 7);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 7 + letter_pos) == "}")
							{
								string_voice = string_copy(text,printer_count + 7,letter_pos);
								printer_count += 7 + letter_pos + 1;
								break;
							}
							else
							{
								if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
								{
									notme = true;
									break;
								}
							}
						}
						if(asset_get_index(string_voice) == -1)
						{
							notme = true;
						}
						else
						{
							text_voice = asset_get_index(string_voice);
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,7) == "{srm:f}")
					{
						shake_random_mode = "float";
						printer_count += 7;
					}
					else if(string_copy(text,printer_count,7) == "{srm:i}")
					{
						shake_random_mode = "int";
						printer_count += 7;
					}
					else if(string_copy(text,printer_count,8) == "{effect:")
					{
						if(string_copy(text,printer_count + 8,6) == "shake[")
						{
							for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 8 + 6);letter_pos ++)
							{
								if(string_char_at(text,printer_count + 8 + 6 + letter_pos) == ",")
								{
									for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 8 + 6);letter_pos_ ++)
									{
										if((string_char_at(text,printer_count + 8 + 6 + letter_pos + letter_pos_) == "]") && (string_char_at(text,printer_count + 8 + 6 + letter_pos + letter_pos_ + 1) == "}"))
										{
											shake_amplitude = string_digits(string_copy(text,printer_count + 8 + 6,letter_pos));
											shake_space_timer = string_digits(string_copy(text,printer_count + 8 + 6 + letter_pos,letter_pos_));
											printer_count += 8 + 6 + letter_pos + letter_pos_ + 2;
											break;
										}
									}
									break;
								}
							}
						}
						else if(string_copy(text,printer_count + 8,8) == "r_shake[")
						{
							for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 8 + 8);letter_pos ++)
							{
								if(string_char_at(text,printer_count + 8 + 8 + letter_pos) == ",")
								{
									for(var letter_pos_0 = 0;letter_pos_0 < string_length(text) - (printer_count + 8 + 8 + letter_pos + 1);letter_pos_0 ++)
									{
										if(string_char_at(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0) == ",")
										{
											for(var letter_pos_1 = 0;letter_pos_1 < string_length(text) - (printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1);letter_pos_1 ++)
											{
												if(string_char_at(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1) == ",")
												{
													for(var letter_pos_2 = 0;letter_pos_2 < string_length(text) - (printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1 + 1);letter_pos_2 ++)
													{
														if((string_char_at(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1 + 1 + letter_pos_2) == "]") && (string_char_at(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1 + 1 + letter_pos_2 + 1) == "}"))
														{
															random_shake_amplitude = string_digits(string_copy(text,printer_count + 8 + 8,letter_pos));
															random_shake_space_timer = string_digits(string_copy(text,printer_count + 8 + 8 + letter_pos + 1,letter_pos_0));
															random_shake_timer = string_digits(string_copy(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1,letter_pos_1));
															random_shake_number = string_digits(string_copy(text,printer_count + 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1 + 1,letter_pos_2 + 1));
															printer_count += 8 + 8 + letter_pos + 1 + letter_pos_0 + 1 + letter_pos_1 + 1 + letter_pos_2 + 1 + 1;
															break;
														}
													}
													break;
												}
											}
												break;
										}
									}
									break;
								}
							}
						}
					}
					else if(string_copy(text,printer_count,7) == "{color:")
					{
						if(string_copy(text,printer_count + 7,3) == "all")
						{
							if(string_copy(text,printer_count + 10,1) == "[")
							{
								for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 11);letter_pos ++)
								{
									if(string_char_at(text,printer_count + 11 + letter_pos) == "]")
									{
										if(string_count(",",string_copy(text,printer_count + 11,letter_pos)) == 2) // 逗号有俩个
										{
											var string_color_0_length = 0;
											var string_color_1_length = 0;
											for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 11);letter_pos_ ++) // for查找","
											{
												if(string_char_at(text,printer_count + 11 + letter_pos_) == ",") // 找到了逗号
												{
													for(var index = 0;index < 4;index ++) // for赋值
													{
														text_color[index][0] = string_digits(string_copy(text,printer_count + 11,letter_pos_));
													}
													string_color_0_length = letter_pos_; //整上r32数值长度长度
													break;
												}
											}
											for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 11 + string_color_0_length);letter_pos_ ++)
											{
												if(string_char_at(text,printer_count + 11 + letter_pos_ + string_color_0_length + 1) == ",")
												{
													for(var index = 0;index < 4;index ++)
													{
														text_color[index][1] = string_digits(string_copy(text,printer_count + 11 + string_color_0_length,letter_pos_ + 1));
													}
													string_color_1_length = letter_pos_;
													break;
												}
											}
											for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 11 + string_color_1_length);letter_pos_ ++)
											{
												if(string_char_at(text,printer_count + 11 + letter_pos_ + string_color_0_length + string_color_1_length + 1) == "]")
												{
													for(var index = 0;index < 4;index ++)
													{
														text_color[index][2] = string_digits(string_copy(text,printer_count + 11 + string_color_0_length + string_color_1_length + 1,letter_pos_));
													}
													printer_count += 11 + letter_pos + 2;
													break;
												}
											}
										}
										break;
									}
								}
							}
						}
						if(string_copy(text,printer_count + 8,1) == "[")
						{
							for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 9);letter_pos ++)
							{
								if(string_char_at(text,printer_count + 9 + letter_pos) == "]")
								{
									if(string_count(",",string_copy(text,printer_count + 9,letter_pos)) == 2)
									{
										var string_color_0_length = 0;
										var string_color_1_length = 0;
										for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 9);letter_pos_ ++)
										{
											if(string_char_at(text,printer_count + 9 + letter_pos_) == ",")
											{
												string_color_0_length = letter_pos_;
												break;
											}
										}
										for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 9 + string_color_0_length + 1);letter_pos_ ++)
										{
											if(string_char_at(text,printer_count + 9 + letter_pos_ + string_color_0_length + 1) == ",")
											{
												string_color_1_length = letter_pos_;
												break;
											}
										}
										for(var letter_pos_ = 0;letter_pos_ < string_length(text) - (printer_count + 9 + string_color_0_length + 1 + string_color_1_length + 1);letter_pos_ ++)
										{
											if(string_char_at(text,printer_count + 9 + letter_pos_ + string_color_0_length + 1 + string_color_1_length + 1) == "]")
											{
												text_color[string_copy(text,printer_count + 7,1) - 1][0] = string_digits(string_copy(text,printer_count + 9,string_color_0_length));
												text_color[string_copy(text,printer_count + 7,1) - 1][1] = string_digits(string_copy(text,printer_count + 9 + string_color_0_length + 1,string_color_1_length));
												text_color[string_copy(text,printer_count + 7,1) - 1][2] = string_digits(string_copy(text,printer_count + 9 + string_color_0_length + 1 + string_color_1_length + 1,letter_pos_));
												printer_count += 9 + string_color_0_length + 1 + string_color_1_length + 1 + letter_pos_ + 2;
												break;
											}
										}
									}
									break;
								}
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,9) == "{novoice}")
					{
						cansound = false;
						printer_count += 9;
					}
					else if(string_copy(text,printer_count,10) == "{canvoice}")
					{
						cansound = true;
						printer_count += 10;
					}
					else if(string_copy(text,printer_count,6) == "{skip}")
					{
						printer_number = string_length(text) - printer_count + 1;
						skip = true;
						wait_timer = 0;
						printer_count += 6;
					}
					else if(string_copy(text,printer_count,8) == "{noskip}")
					{
						canskip = false;
						printer_count += 8;
					}
					else if(string_copy(text,printer_count,9) == "{canskip}")
					{
						canskip = true;
						printer_count += 9;
					}
					else if(string_copy(text,printer_count,10) == "{noshadow}")
					{
						shadow = false;
						printer_count += 10;
					}
					else if(string_copy(text,printer_count,11) == "{canshadow}")
					{
						shadow = true;
						printer_count += 11;
					}
					else if(string_copy(text,printer_count,13) == "{easeIn:true}")
					{
						ease_In = true;
						printer_count += 13;
					}
					else if(string_copy(text,printer_count,14) == "{easeIn:false}")
					{
						ease_In = false;
						printer_count += 14;
					}
					else if(string_copy(text,printer_count,12) == "{easeInMode:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 12);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 12) == "}" or string_char_at(text,printer_count + 12 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							
							if(string_char_at(text,printer_count + 12 + letter_pos) == "}")
							{
								ease_In_Mode = string_copy(text,printer_count + 12,letter_pos)
								printer_count += 12 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,14) == "{easeOut:true}")
					{
						ease_Out = true;
						printer_count += 14;
					}
					else if(string_copy(text,printer_count,15) == "{easeOut:false}")
					{
						ease_Out = false;
						printer_count += 15;
					}
					else if(string_copy(text,printer_count,13) == "{easeOutMode:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 13);letter_pos ++)
							{
							if(string_char_at(text,printer_count + 13) == "}" or string_char_at(text,printer_count + 13 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							
							if(string_char_at(text,printer_count + 13 + letter_pos) == "}")
							{
								ease_Out_Mode = string_copy(text,printer_count + 13,letter_pos)
								printer_count += 13 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,4) == "{pn:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 4);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 4 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 4 + letter_pos) == "}")
							{
								printer_number = string_digits(string_copy(text,printer_count + 4,letter_pos));
								printer_number_old = printer_number;
								printer_count += 4 + letter_pos + 1;
								break;
							}
						}
							if notme
							break;
					}
					else if(string_copy(text,printer_count,13) == "{space_timer:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 13);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 13 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 13 + letter_pos) == "}")
							{
								timer = 0;
								space_timer = string_digits(string_copy(text,printer_count + 13,letter_pos));
								printer_count += 13 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,8) == "{script:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 7);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 8 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 8 + letter_pos) == "}")
							{
								if(asset_get_index(string_copy(text,printer_count + 8,letter_pos)) == -1)
								{
									notme = true;
									break;
								}
								asset_get_index(string_copy(text,printer_count + 8,letter_pos))()
								printer_count += 8 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,10) == "{page:new}")
					{
						page_new = true;
						x = text_x;
						y = text_y;
						printer_count_real = 0;
						printer_count += 9;
						break;
					}
					else if(string_copy(text,printer_count,6) == "{head:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;	
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Enemy0.head_index = string_digits(string_copy(text,printer_count + 6,letter_pos)) ;
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,6) == "{head:")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 6);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 6 + letter_pos) == "{")
							{
								notme = true;
								break;	
							}
							if(string_char_at(text,printer_count + 6 + letter_pos) == "}")
							{
								Enemy0.body_index = string_digits(string_copy(text,printer_count + 6,letter_pos)) ;
								printer_count += 6 + letter_pos + 1;
								break;
							}
						}
						if notme
							break;
					}
					else if(string_copy(text,printer_count,8) == "{body:6}")
					{
						printer_count += 8;
						Enemy0.body_index = 6
					}
					else if(string_copy(text,printer_count,10) == "{draw:spr[")
					{
						for(var letter_pos = 0;letter_pos < string_length(text) - (printer_count + 10);letter_pos ++)
						{
							if(string_char_at(text,printer_count + 10 + letter_pos) == "{")
							{
								notme = true;
								break;
							}
							if(string_char_at(text,printer_count + 10 + letter_pos) == ",")
							{
							}
						}
					}
					else
					{
						break;
					}
				}
				else
				{
					break;
				}
			}
			if(page_new)
			{
				break;
			}
			if(escape)
			{
				if(string_char_at(text,printer_count) == "@")
				{
					if(string_char_at(text,printer_count + 1) == "n")
					{
						draw_set_font(text_font);
						x = text_x;
						y += string_height(string_char_at(text,printer_count)) + space_y;
						printer_count_real = 0;
						printer_count ++;
						continue;
					}
					else if(string_char_at(text,printer_count + 1) == "r")
					{
						text_font = font_eng;
						text = string_insert("* ",text,printer_count + 2);
						x = text_x;
						y += string_height(string_char_at(text,printer_count)) + space_y;
						printer_count_real = 2;
						printer_count ++;
						continue;
					}
				}
			}
			if(wait_timer > 0)
			{
				printer_count --;
				break;
			}
			draw_set_font(text_font);
			var letter =
			{
				x : x,
				y : y - string_height(string_char_at(text,printer_count)) / 2,
				draw : true,
				
				
				letter : "",

				letter_x : x,
				letter_y : y,
				letter_alpha : 1,

				font : font_eng,

				color_0 : c_white,
				color_1 : c_white,
				color_2 : c_white,
				color_3 : c_white,

				timer : 0,
				random_timer : 0,

				shake_amplitude : 0,
				shake_space_timer : 1,
				shake_random_mode : "float",
				random_shake_amplitude : 0,
				random_shake_timer : 1,

				shadow : true,

				ease_In : true,
				ease_Out : false,
				ease_In_Mode : "Down",
				ease_Out_Mode : "Up",
				final_end : false

			}
			if(ease_In == true)
			{
				switch(ease_In_Mode)
				{
					case "Up":
						letter.y -= 10;
						break;
					case "Down":
						letter.y += 10;
						break;
					case "Left":
						letter.x -= 10;
						break;
					case "Right":
						letter.x += 10;
						break;
					case "Alpha":
						break;
				}
				letter.image_alpha = 0;
			}
			else
			{
				letter.image_alpha = image_alpha;
				
			}
			letter.letter_x = x;
			letter.letter_y = y - string_height(string_char_at(text,printer_count)) / 2;
			letter.image_xscale = image_xscale;
			letter.image_yscale = image_yscale;
			letter.image_angle = image_angle;
			letter.letter_alpha = image_alpha;
			letter.letter = string_char_at(text,printer_count);
			letter.font = text_font;
			letter.color_0 = make_color_rgb(text_color[0][0],text_color[0][1],text_color[0][2]);
			letter.color_1 = make_color_rgb(text_color[1][0],text_color[1][1],text_color[1][2]);
			letter.color_2 = make_color_rgb(text_color[2][0],text_color[2][1],text_color[2][2]);
			letter.color_3 = make_color_rgb(text_color[3][0],text_color[3][1],text_color[3][2]);
			letter.shake_amplitude = shake_amplitude;
			letter.shake_space_timer = shake_space_timer;
			letter.shake_random_mode = shake_random_mode;
			letter.shadow = shadow;
			letter.ease_In = ease_In;
			letter.ease_Out = ease_Out;
			letter.ease_In_Mode = ease_In_Mode;
			letter.ease_Out_Mode = ease_Out_Mode;
			array_insert(letters,array_length(letters),letter);
			x += string_width(letter.letter) + space_x;
			if(printer_count_real >= printer_number_max)
			{
				x = text_x;
				y += string_height(letter.letter) + space_y;
				printer_count_real = 0;
			}
			if(string_char_at(text,printer_count) == " ")
			{
				letter_space = true;
			}
		}
		if(letter_space == false && cansound)
		{
			audio_play_sound(text_voice,0,false);
		}
		
		escape = true;
		letter_space = false;
	}
}
else
{
	wait_timer --;
	timer = 0;
}

if(random_shake_timer_ % random_shake_space_timer == 0)
{
	if(array_length(letters) > 0)
	{
		for(var index = 0;index < random_shake_number;index ++)
		{
			var letter_array = letters[irandom_range(0,(array_length(letters) - 1))]
			letter_array.random_shake_amplitude = random_shake_amplitude;
			letter_array.random_shake_space_timer = random_shake_space_timer;
			letter_array.random_shake_timer = random_shake_timer;
			letter_array.random_shake_number = random_shake_number;
			letter_array.random_timer = 0;
		}
	}
}

if(printer_count >= string_length(text))
{
	final = true;
}

for(var index = 0;index < array_length(letters);index ++)
{
	if(letters[index].ease_In)
	{
		final_anim = false;
		break;
	}
	else
	{
		final_anim = true;
	}
}

if(candestroy && final_anim && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))){
	final_end = true;
	if(final)
	{
		for(var index = 0;index < array_length(letters);index ++)
		{
			if(not letters[index].ease_Out)
			{
				letters[index].draw = false;
				letters[index].image_alpha = 0;
			}
			else
			{
				letters[index].final_end = true;
			}
		}
	}
	else
	{
		if(page_new)
		{
			page_new = false;
			skip = false;
			printer_number = printer_number_old;
			for(var index = 0;index < array_length(letters);index ++)
			{
				if(not letters[index].ease_Out)
				{
					letters[index].draw = false;
					letters[index].image_alpha = 0;
				}
				else
				{
					letters[index].final_end = true;
				}
			}
		}
	}
}

if(final_end and final)
{
	for(var index = 0;index < array_length(letters);index ++)
	{
		if(not letters[index].image_alpha <= 0)
		{
			break;
		}
		else
		{
			if(index == array_length(letters) - 1)
			{
				instance_destroy();
			}
			else
			{
				continue;
			}
		}
	}
}
