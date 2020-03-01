Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mafia Yakuza
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'east2' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},
	
	-- Taxi Gate

{
	objName = 'prop_sm1_11_garaged',
	objCoords  = {x = 907.5238, y = -179.7388, z = 73.9924},
	textCoords = {x = 907.5238, y = -179.7388, z = 73.9924},
	authorizedJobs = { 'taxi' },
	locked = false,
	distance = 2,
	size = 1
},

-- Taxi Door

{
	objName = 'apa_heist_apart2_door',
	objCoords  = {x = 897.3915, y = -187.7381, z = 74.0545},
	textCoords = {x = 897.3915, y = -187.7381, z = 74.0545},
	authorizedJobs = { 'taxi' },
	locked = true,
	distance = 2,
	size = 1
},

	--
	-- Addons
	--

	--[[
	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	{
		objName = 'prop_gate_airport_01',
		objCoords  = vector3(420.1, -1017.3, 28.0),
		textCoords = vector3(420.1, -1021.0, 32.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	}
	--]]
}