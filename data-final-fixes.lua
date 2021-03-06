require( "config" )

function new_size( oldvalue, offset, factor )
	if oldvalue == nil then oldvalue = 1 end
	local v = offset + oldvalue * factor
	if v > oldvalue then
		return( v )
	else
		return oldvalue
	end
end

if my_inventory_size then data.raw.player.player.inventory_size = my_inventory_size end

if my_running_speed_factor and my_running_speed_factor ~= 1 and data.raw.player.player.running_speed == 0.15 then data.raw.player.player.running_speed = 0.15 * my_running_speed_factor end

for _,dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and item.stack_size > 1 then
			item.stack_size = new_size( item.stack_size, my_stack_offset, my_stack_factor )	
		end
		if item.default_request_amount then
			if my_default_req_amount then item.default_request_amount = my_default_req_amount end
		end
		if item.ingredients then
			item.ingredients = {}
		end
		if item.unit then
			item.unit.ingredients = {}
			item.unit.count = 1
			item.unit.time = 0.5
		end
		if item.range then
			item.range = item.range * 2
		end
		if item.mining_speed then
			item.mining_speed = item.mining_speed * 5
		end
		if item.energy_usage then
			item.energy_usage = '100W'
		end
		if item.energy_required then
			item.energy_required = 0.5
		end
	end
end

for _, ammo in pairs(data.raw.ammo) do
	-- ammo.stack_size = new_size( ammo.stack_size, my_stack_offset, my_stack_factor )
	ammo.magazine_size = new_size( ammo.magazine_size, my_mag_offset, my_mag_factor )
	if my_default_req_amount then ammo.default_request_amount = my_default_req_amount end
end

for _, modu in pairs(data.raw["module"]) do
	modu.stack_size = new_size( modu.stack_size, my_stack_offset, my_stack_factor )
end

for _, caps in pairs(data.raw["capsule"]) do
	caps.stack_size = new_size( caps.stack_size, my_stack_offset, my_stack_factor )
end

-- make resources endless

for k, v in pairs(data.raw.resource) do
   data.raw.resource[k].infinite = true
   data.raw.resource[k].minimum  = 175
   data.raw.resource[k].normal   = 350
end
