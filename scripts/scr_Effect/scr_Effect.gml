enum Effect
{
	Null,
	Wave,
	Singe,
	Dispersion,
	Blur,
	Mangled,
	All
}
function surface_reset()
{
	surface_set_target(global.surface_effect)
	draw_surface(application_surface,0,0)
	surface_reset_target()
}
function Effect_Set(type)
{
	switch(type)
	{
		case Effect.Dispersion:
			System_Effect.rgb_offset = [argument[1],argument[2],argument[3]]
			break;
		case Effect.Blur:
			System_Effect.blur_amplitude_x = argument[1]
			System_Effect.blur_amplitude_y = argument[2]
			System_Effect.blur_speed = argument[3]
			break;
		case Effect.Mangled:
			System_Effect.mangled_number = argument[1]
			System_Effect.mangled_tiles_get = argument[2]
			System_Effect.mangled_tiles_size = argument[3]
			System_Effect.mangled_tiles_draw = argument[4]
			break;
		case Effect.Wave:
			System_Effect.wave_timer = argument[1]
			System_Effect.wave_amplitude = argument[2]
			System_Effect.wave_speed = argument[3]
			System_Effect.wave_space = argument[4]
			break;
		case Effect.Singe:
			System_Effect.singe_amplitude = argument[1]
			System_Effect.singe_space = argument[2]
			break;
	}
}

function Effect_On(type)
{
	global.Effect.Null = false
	switch(type)
	{
		case Effect.All:
			global.Effect =
			{
				Null : false,
				Dispersion : true,
				Blur : true,
				Mangled : true,
				Wave : true,
				Singe : true
			}
			break;
		case Effect.Dispersion:
			global.Effect.Dispersion = true
			break;
		case Effect.Blur:
			global.Effect.Blur = true
			break;
		case Effect.Mangled:
			global.Effect.Mangled = true
			break;
		case Effect.Wave:
			global.Effect.Wave = true
			break;
		case Effect.Singe:
			global.Effect.Singe = true
			break;
	}
}

function Effect_Off(type)
{
	global.Effect.Null = false
	switch(type)
	{
		case Effect.All:
			global.Effect =
			{
				Null : false,
				Dispersion : false,
				Blur : false,
				Mangled : false,
				Wave : false,
				Singe : false
			}
			break;
		case Effect.Null:
			global.Effect.Null = true
			break;
		case Effect.Dispersion:
			global.Effect.Dispersion = false
			break;
		case Effect.Blur:
			global.Effect.Blur = false
			break;
		case Effect.Mangled:
			global.Effect.Mangled = false
			break;
		case Effect.Wave:
			global.Effect.Wave = false
			break;
		case Effect.Singe:
			global.Effect.Singe = false
			break;
	}
}
