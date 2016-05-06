data:extend({
	{
		type = "technology",
		name = "SOLAR-POWER-BIG",
		icon = "__base__/graphics/technology/solar-energy.png",
		effects =
		{
			{
			type = "unlock-recipe",
			recipe = "solar-generator-big"
			}
		},
	prerequisites = {"solar-energy"},
	unit =
			{
			count = 50,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1}
				},
			time = 30
			},
	upgrade = true,
	order = "a-h-d",
	},
})