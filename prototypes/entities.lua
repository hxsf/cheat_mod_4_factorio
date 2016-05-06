data:extend(
{
 	----------------------------------------------------------------------------------
	{
		type = "accumulator",
		name = "electric-nanfu",
		icon = "__GodMode__/graphics/electric-nanfu-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "electric-nanfu"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "1000TJ",
			usage_priority = "terciary",
			input_flow_limit = "50TW",
			output_flow_limit = "50TW"
		},
		picture =
		{
			filename = "__GodMode__/graphics/electric-nanfu.png",
			priority = "extra-high",
			width = 124,
			height = 103,
			shift = {0.7, -0.2},
		},
		charge_animation =
		{
			filename = "__GodMode__/graphics/electric-nanfu-charge-animation.png",
			width = 138,
			height = 135,
			line_length = 8,
			frame_count = 24,
			shift = {0.482, -0.638},
			animation_speed = 0.5
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 7},
		discharge_animation =
		{
			filename = "__GodMode__/graphics/electric-nanfu-discharge-animation.png",
			width = 147,
			height = 128,
			line_length = 8,
			frame_count = 24,
			shift = {0.395, -0.525},
			animation_speed = 0.5
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 7},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/accumulator-working.ogg",
				volume = 1
			},
			idle_sound = {
				filename = "__base__/sound/accumulator-idle.ogg",
				volume = 0.4
			},
			max_sounds_per_type = 5
		},
	},
	{
		type = "solar-panel",
		name = "solar-generator-big",
		icon = "__GodMode__/graphics/solar-panel-big-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "solar-generator-big"},
		max_health = 1000,
		corpse = "big-remnants",
		collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
		energy_source =
			{
			  type = "electric",
			  usage_priority = "solar"
			},
		picture =
			{
			  filename = "__GodMode__/graphics/solar-panel-big.png",
			  priority = "high",
			  width = 128,
			  height = 123
			},
    production = "400TW",
    fast_replaceable_group = "solar-panel",
	},
  	----------------------------------------------------------------------------------
	--[[
	{
		type = "accumulator",
		name = "electric-charging-sensor",
		icon = "__GodMode__/graphics/electric-nanfu-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "electric-charging-sensor"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "100W",
			usage_priority = "terciary",
			input_flow_limit = "1W",
			output_flow_limit = "50W"
		},
		picture =
		{
			filename = "__GodMode__/graphics/electric-nanfu.png",
			priority = "extra-high",
			width = 124,
			height = 103,
			shift = {0.7, -0.2},
		},
		charge_animation =
		{
			filename = "__GodMode__/graphics/electric-nanfu-charge-animation.png",
			width = 138,
			height = 135,
			line_length = 8,
			frame_count = 24,
			shift = {0.482, -0.638},
			animation_speed = 0.5
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 7},
		discharge_animation =
		{
			filename = "__GodMode__/graphics/electric-nanfu-discharge-animation.png",
			width = 147,
			height = 128,
			line_length = 8,
			frame_count = 24,
			shift = {0.395, -0.525},
			animation_speed = 0.5
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 7},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/accumulator-working.ogg",
				volume = 1
			},
			idle_sound = {
				filename = "__base__/sound/accumulator-idle.ogg",
				volume = 0.4
			},
			max_sounds_per_type = 5
		},
	},   
	--]]

}
)

