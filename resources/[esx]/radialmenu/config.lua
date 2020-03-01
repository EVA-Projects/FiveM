-- Menu configuration, array of menus to display
menuConfigs = {
    ['emotes'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "Y",                         -- Wheel keybind to use
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 2, ['opacity'] = 1.00 },
                    selected = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 2, ['opacity'] = 0.60 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 12 },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 12 },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 12 }
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.3,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.6,         -- Maximum radius of wheel in percentage
                    labels = {"CANCELAR", "NO", "ANIMAR", "APLAUDIR", "CRUZAR LOS BRAZOS", "APOYARSE"},
                    commands = {"e cancel", "e no", "e cheer", "e slowclap", "e foldarms", "e leanwall"}
                },
                {
                    navAngle = 285,                 -- Oritentation of wheel
                    minRadiusPercent = 0.6,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"SALUDO", "DEDO", "PAZ", "FACEPALM", "DAMN", "FAIL", "MUERTO", "GANG1", "GANG2", "POLICIA", "HOLSTER", "CROWDS"},
                    commands = {"e salute", "e finger", "e peace", "e palm", "e damn", "e fail", "e dead", "e gang1", "e gang2", "e copidle", "e holster", "e copcrowd2"}
                }
            }
        }
    },

    ['vehicles'] = {                                -- Example menu for emotes when player is in a vehicle
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedInAnyVehicle(player, false)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "Y",                         -- Wheel keybind to use
            style = {                               -- Wheel style settings
                sizePx = 400,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 3, ['opacity'] = 1.00 },
                    selected = { ['fill'] = '#555555', ['stroke'] = '#aaaaaa', ['stroke-width'] = 3, ['opacity'] = 0.60 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 16 },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 16 },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Verdana', ['font-size'] = 16 }
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.8,         -- Maximum radius of wheel in percentage
                    labels = {"MOTOR", "LOCK", "PUERTAS", "MALETERO", "CAPO"},
                    commands = {"motor", "lock", "rdoors", "maletero", "capo"}
                }
            }
        }
    }
}
