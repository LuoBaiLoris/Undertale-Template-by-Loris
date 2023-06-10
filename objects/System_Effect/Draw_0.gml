/// @description Draw
if (live_call()) return live_result;
if(not surface_exists(global.surface_effect))
{
	global.surface_effect = surface_create(640,480);
}

surface_set_target(global.surface_effect)
draw_surface(surface_effect,0,0)
surface_reset_target()

surface_reset()

if(not global.Effect.Null)
{
	// 色散/RGB分离
	if(global.Effect.Dispersion)
	{
		gpu_set_blendmode(bm_add)

		draw_surface_ext(global.surface_effect,rgb_offset[0,0],rgb_offset[0,1],1,1,0,c_red,1)
		draw_surface_ext(global.surface_effect,rgb_offset[1,0],rgb_offset[1,1],1,1,0,make_color_rgb(0,255,0),1)
		draw_surface_ext(global.surface_effect,rgb_offset[2,1],rgb_offset[2,1],1,1,0,c_blue,1)

		gpu_set_blendmode(bm_normal)
		
		surface_reset()
	}

	// 均值模糊
	if(global.Effect.Blur)
	{
		for(var index = 0;index<blur_amplitude_x;index++)
		{
			draw_surface_ext(global.surface_effect,-index-1,0,1,1,0,c_white,(blur_amplitude_x-index-1)*(1/blur_amplitude_x))
			surface_reset()
			draw_surface_ext(global.surface_effect,index+1,0,1,1,0,c_white,(blur_amplitude_x-index-1)*(1/blur_amplitude_x))
			surface_reset()
		}
		for(var index = 0;index<blur_amplitude_y;index++)
		{
			draw_surface_ext(global.surface_effect,0,-index-1,1,1,0,c_white,(blur_amplitude_y-index-1)*(1/blur_amplitude_y))
			surface_reset()
			draw_surface_ext(global.surface_effect,0,index+1,1,1,0,c_white,(blur_amplitude_y-index-1)*(1/blur_amplitude_y))
			surface_reset()
		}
	}

	// 错位
	if(global.Effect.Mangled)
	{
		if(timer % 60 == 0)
		{
			array_delete(mangled_tiles,0,array_length(mangled_tiles))
			var number = random_range(mangled_number[0],mangled_number[1])
			for(var index = 0;index < number;index ++)
			{
				mangled_tiles_get = [random(640),random(480)]
				mangled_tiles_size = [random_range(10,50),random_range(10,50)]
				mangled_tiles_draw = [random(640),random(480)]
				array_set(mangled_tiles,index,[mangled_tiles_get[0],mangled_tiles_get[1],mangled_tiles_size[0],mangled_tiles_size[1],mangled_tiles_draw[0],mangled_tiles_draw[1]])
			}
		}

		for(var index = 0;index < array_length(mangled_tiles);index ++)
		{
			draw_surface_part(global.surface_effect,mangled_tiles[index,0],mangled_tiles[index,1],mangled_tiles[index,2],mangled_tiles[index,3],mangled_tiles[index,4],mangled_tiles[index,5])
			surface_reset()
		}
		surface_reset()
	}

	// 波纹
	if(global.Effect.Wave)
	{
		for(var index = 0;index < 480;index ++)
		{
			draw_surface_part(global.surface_effect,0,index,640,1,wave_amplitude * sin(wave_timer+index * wave_space),index)
		}
		surface_reset()
	}

	// 信号干扰
	if(global.Effect.Singe)
	{
		for(var index = 0;index < 480 / singe_space;index ++)
		{
			draw_surface_part(global.surface_effect,0,index*singe_space,640,singe_space,random_range(-singe_amplitude,singe_amplitude),index*singe_space)
		}
		surface_reset()
	}
	
}
	waw = 15
	blur_amplitude_y = 15
	blur_speed = 5
	for(var index = 0;index<3;index++)
	{
		draw_surface_ext(surface_effect,0,0,1,1,0,c_white,0.5)
		//surface_reset()
	}