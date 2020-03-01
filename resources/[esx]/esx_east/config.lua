Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'es'

Config.eastStations = {

  east = {

    Blip = {
      Pos     = { x = -2661.69, y = 1307.86, z = 147.12 },
      Sprite  = 437,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 100000 },
      { name = 'WEAPON_ASSAULTSMG',       price = 250000 }

    },

	  AuthorizedVehicles = {
		  { name = 'schafter3',  label = 'Véhicule Civil' },
		  { name = 'btype',      label = 'Roosevelt' },
		  { name = 'sandking',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
		  { name = 'guardian',   label = 'Grand 4x4' },
		  { name = 'burrito3',   label = 'Fourgonnette' },
		  { name = 'mesa',       label = 'Tout-Terrain' },
	  },

    Cloakrooms = {
      { x = -2672.98, y = 1336.71, z = 140.88},
    },

    Armories = {
      { x = -2677.49, y = 1332.55, z = 140.88},
    },

    Vehicles = {
      {
        Spawner    = {x = -2668.58,y = 1304.79,z = 147.12 },
        Spawner    = {x = -2668.58,y = 1304.79,z = 147.12 },
        Heading    = 269.54,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -2668.55, y = 1304.91, z = 147.12 },
        SpawnPoint = { x = -2668.55, y = 1304.91, z = 147.12 },
        Heading    = 258.41,
      }
    },

    VehicleDeleters = {
      {x = -2668.2,y = 1310.07,z = 147.12 },
      
    },

    BossActions = {
      { x = -2676.9, y = 1335.1, z = 152.01 },
    },

  },

}