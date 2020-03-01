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
      Pos     = { x = -957.1, y = -1497.45,z = 5.01 },
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
      { x = -2675.11, y = 1332.55, z = 140.88},
    },

    Armories = {
      { x = -2677.49, y = 1332.55, z = 140.88},
    },

    Vehicles = {
      {
        Spawner    = {x = -960.47,y = -1487.42,z = 5.01 },
        Spawner    = {x = -960.47,y = -1487.42,z = 5.01 },
        Heading    = 110.3,
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
      {x = -957.1,y = -1497.45,z = 5.01 },
      
    },

    BossActions = {
      { x = -2676.9, y = 1335.1, z = 152.01 },
    },

  },

}