data:extend(
{
 	---------------------------------------------------------------------------------
	{
		type = "recipe",
		name = "electric-nanfu",
		energy_required = 1,
		enabled = true,
		ingredients =
		{
			{"iron-plate", 1},
		},
		result = "electric-nanfu",
	},
	{
		type = "recipe",
		name = "solar-generator-big",
		energy_required = 18,
		enabled = "false",
		ingredients =
			{
				{"steel-plate", 30},
				{"electronic-circuit", 100},
				{"copper-plate", 200},
			},
		result = "solar-generator-big"
	},
	
 	---------------------------------------------------------------------------------
	--[[
	{
		type = "recipe",
		name = "electric-charging-sensor",
		energy_required = 1,
		enabled = true,
		ingredients =
		{
			{"iron-plate", 1},
		},
		result = "electric-charging-sensor",
	},
	--]]
	
}
)

