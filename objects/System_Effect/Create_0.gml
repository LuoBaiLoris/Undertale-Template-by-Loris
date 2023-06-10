/// @description 
if (live_call()) return live_result;
global.surface_effect = surface_create(640,480);
surface_effect = surface_create(640,480);

global.Effect =
{
	Null : false,
	Dispersion : false,
	Blur : false,
	Mangled : false,
	Wave : false,
	Singe : false
}

timer = 0

/*
	Null
	Dispersion
	Blur
	Mangled
	Wave
	Singe
*/

// Dispersion
rgb_offset = [[0,0],[0,0],[0,0]]

// Blur
blur_amplitude_x = 0
blur_amplitude_y = 0
blur_speed = 1

// Mangled
mangled_tiles = []
mangled_number = [7,10]
mangled_tiles_get = [0,0]
mangled_tiles_size = [0,0]
mangled_tiles_draw = [0,0]

// Wave
wave_timer = 0
wave_amplitude = 5
wave_speed = 1
wave_space = 0.25

// Singe
singe_amplitude = 3
singe_space = 1
