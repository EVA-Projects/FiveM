
local estado = nil
local propietario = 0
local nombrepropietario = nil
local soyelpropietario = 0
local enventa = 0
local puertaesta = 0
local mgarage = 0
local marmas = 0
local mdinero = 0
local mitems = 0
local mventa = 0

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    TriggerServerEvent("pk_casas:spawntodos")
end)



---------------------------------------- CASAS ---------------------------------------------------
local TeleportFromTo = {
	----------------------------------------------- Barrio cheto --------------------------------------------
	["West Mirror Street"] = {
		positionFrom = { ['x'] = 1114.26, ['y'] = -391.25, ['z'] = 68.95, nom = "West Mirror Street", precio = 400000},
		positionTo = { ['x'] = 1106.48, ['y'] = -392.56, ['z'] = -5.06 , nom = "West Mirror Street", precio = 400000},
		GuardarVehiculo = { ['x'] = 1106.01, ['y'] = -399.15, ['z'] = 67.98 , nom = "West Mirror Street"},
		SpawnVehicle = { ['x'] = 1106.01, ['y'] = -399.15, ['z'] = 67.98 , nom = "West Mirror Street"},
		menu = { ['x'] = 1121.44, ['y'] = -391.49, ['z'] = -5.06 , nom = "West Mirror Street", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1113.11, ['y'] = -393.41, ['z'] = -5.06 , nom = "West Mirror Street"},
	},
	["Bridge Street 1"] = {
		positionFrom = { ['x'] = 1099.42, ['y'] = -438.67, ['z'] = 67.79, nom = "Bridge Street 1", precio = 450000},
		positionTo = { ['x'] = 1098.31, ['y'] = -441.73, ['z'] = -5.06 , nom = "Bridge Street 1", precio = 450000},
		GuardarVehiculo = { ['x'] = 1099.83, ['y'] = -429.47, ['z'] = 67.39 , nom = "Bridge Street 1"},
		SpawnVehicle = { ['x'] = 1099.83, ['y'] = -429.47, ['z'] = 67.39 , nom = "Bridge Street 1"},
		menu = { ['x'] = 1113.35, ['y'] = -440.44, ['z'] = -5.06 , nom = "Bridge Street 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1105.14, ['y'] = -442.36, ['z'] = -5.02 , nom = "Bridge Street 1"},
	},
	["Bridge Street 2"] = {
		positionFrom = { ['x'] = 1056.18, ['y'] = -448.99, ['z'] = 66.26, nom = "Bridge Street 2", precio = 500000},
		positionTo = { ['x'] = 1045.53, ['y'] = -450.71, ['z'] = -5.06 , nom = "Bridge Street 2", precio = 500000},
		GuardarVehiculo = { ['x'] = 1060.7, ['y'] = -445.44, ['z'] = 65.93 , nom = "Bridge Street 2"},
		SpawnVehicle = { ['x'] = 1060.7, ['y'] = -445.44, ['z'] = 65.93 , nom = "Bridge Street 2"},
		menu = { ['x'] = 1060.38, ['y'] = -449.51, ['z'] = -5.06 , nom = "Bridge Street 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1052.14, ['y'] = -451.49, ['z'] = -5.02 , nom = "Bridge Street 2"},
	},
	["Bridge Street 3"] = {
		positionFrom = { ['x'] = 1046.28, ['y'] = -497.91, ['z'] = 64.08, nom = "Bridge Street 3", precio = 480000},
		positionTo = { ['x'] = 1032.49, ['y'] = -498.7, ['z'] = -4.06 , nom = "Bridge Street 3", precio = 480000},
		GuardarVehiculo = { ['x'] = 1047.64, ['y'] = -487.37, ['z'] = 63.92 , nom = "Bridge Street 3"},
		SpawnVehicle = { ['x'] = 1047.64, ['y'] = -487.37, ['z'] = 63.92 , nom = "Bridge Street 3"},
		menu = { ['x'] = 1047.4, ['y'] = -497.42, ['z'] = -4.06 , nom = "Bridge Street 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1039.14, ['y'] = -499.38, ['z'] = -4.02 , nom = "Bridge Street 3"},
	},
	["West Mirror Drive 1"] = {
		positionFrom = { ['x'] = 1014.61, ['y'] = -469.21, ['z'] = 64.5, nom = "West Mirror Drive 1", precio = 450000},
		positionTo = { ['x'] = 1010.5, ['y'] = -470.85, ['z'] = -5.06 , nom = "West Mirror Drive 1", precio = 450000},
		GuardarVehiculo = { ['x'] = 1020.16, ['y'] = -461.43, ['z'] = 63.9 , nom = "West Mirror Drive 1"},
		SpawnVehicle = { ['x'] = 1020.16, ['y'] = -461.43, ['z'] = 63.9 , nom = "West Mirror Drive 1"},
		menu = { ['x'] = 1025.4, ['y'] = -469.5, ['z'] = -5.06 , nom = "West Mirror Drive 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1017.12, ['y'] = -471.36, ['z'] = -5.02 , nom = "West Mirror Drive 1"},
	},
	["West Mirror Drive 2"] = {
		positionFrom = { ['x'] = 970.32, ['y'] = -502.26, ['z'] = 62.14, nom = "West Mirror Drive 2", precio = 480000},
		positionTo = { ['x'] = 965.58, ['y'] = -507.47, ['z'] = -5.06 , nom = "West Mirror Drive 2", precio = 480000},
		GuardarVehiculo = { ['x'] = 961.54, ['y'] = -503.3, ['z'] = 61.6 , nom = "West Mirror Drive 2"},
		SpawnVehicle = { ['x'] = 961.54, ['y'] = -503.3, ['z'] = 61.6 , nom = "West Mirror Drive 2"},
		menu = { ['x'] = 980.38, ['y'] = -506.58, ['z'] = -5.06 , nom = "West Mirror Drive 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 972.2, ['y'] = -508.23, ['z'] = -5.02 , nom = "West Mirror Drive 2"},
	},
	["West Mirror Drive 3"] = {
		positionFrom = { ['x'] = 924.31, ['y'] = -525.93, ['z'] = 59.79, nom = "West Mirror Drive 3", precio = 425000},
		positionTo = { ['x'] = 917.53, ['y'] = -528.45, ['z'] = -5.06 , nom = "West Mirror Drive 3", precio = 425000},
		GuardarVehiculo = { ['x'] = 916.65, ['y'] = -524.38, ['z'] = 58.97 , nom = "West Mirror Drive 3"},
		SpawnVehicle = { ['x'] = 916.65, ['y'] = -524.38, ['z'] = 58.97 , nom = "West Mirror Drive 3"},
		menu = { ['x'] = 932.39, ['y'] = -527.5, ['z'] = -5.06 , nom = "West Mirror Drive 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 924.26, ['y'] = -529.22, ['z'] = -5.02 , nom = "West Mirror Drive 3"},
	},
	["Nikola Avenue 1"] = {
		positionFrom = { ['x'] = 988.06, ['y'] = -525.97, ['z'] = 60.69, nom = "Nikola Avenue 1", precio = 450000},
		positionTo = { ['x'] = 977.7, ['y'] = -527.09, ['z'] = -5.06 , nom = "Nikola Avenue 1", precio = 450000},
		GuardarVehiculo = { ['x'] = 981.89, ['y'] = -533.63, ['z'] = 60.09 , nom = "Nikola Avenue 1"},
		SpawnVehicle = { ['x'] = 981.89, ['y'] = -533.63, ['z'] = 60.09 , nom = "Nikola Avenue 1"},
		menu = { ['x'] = 992.39, ['y'] = -526.5, ['z'] = -5.06 , nom = "Nikola Avenue 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 984.11, ['y'] = -528.56, ['z'] = -5.02 , nom = "Nikola Avenue 1"},
	},
	["Nikola Avenue 2"] = {
		positionFrom = { ['x'] = 919.94, ['y'] = -569.84, ['z'] = 58.37, nom = "Nikola Avenue 2", precio = 500000},
		positionTo = { ['x'] = 907.62, ['y'] = -564.52, ['z'] = -5.06 , nom = "Nikola Avenue 2", precio = 500000},
		GuardarVehiculo = { ['x'] = 927.46, ['y'] = -568.6, ['z'] = 57.97 , nom = "Nikola Avenue 2"},
		SpawnVehicle = { ['x'] = 927.46, ['y'] = -568.6, ['z'] = 57.97 , nom = "Nikola Avenue 2"},
		menu = { ['x'] = 922.39, ['y'] = -563.5, ['z'] = -5.06 , nom = "Nikola Avenue 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 914.07, ['y'] = -565.56, ['z'] = -5.02 , nom = "Nikola Avenue 2"},
	},
	["West Mirror Drive 9"] = {
		positionFrom = { ['x'] = 844.05, ['y'] = -562.97, ['z'] = 57.83, nom = "West Mirror Drive 9", precio = 480000},
		positionTo = { ['x'] = 834.83, ['y'] = -564.21, ['z'] = -5.06 , nom = "West Mirror Drive 9", precio = 480000},
		GuardarVehiculo = { ['x'] = 853.45, ['y'] = -565.73, ['z'] = 57.71 , nom = "West Mirror Drive 9"},
		SpawnVehicle = { ['x'] = 853.45, ['y'] = -565.73, ['z'] = 57.71 , nom = "West Mirror Drive 9"},
		menu = { ['x'] = 849.39, ['y'] = -563.5, ['z'] = -5.06 , nom = "West Mirror Drive 9", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 841.1, ['y'] = -565.47, ['z'] = -5.02 , nom = "West Mirror Drive 9"},
	},
	["Bridge Street 4"] = {
		positionFrom = { ['x'] = 1060.51, ['y'] = -378.2, ['z'] = 68.23, nom = "Bridge Street 4", precio = 480000},
		positionTo = { ['x'] = 1048.44, ['y'] = -375.38, ['z'] = -5.06 , nom = "Bridge Street 4", precio = 480000},
		GuardarVehiculo = { ['x'] = 1056.2, ['y'] = -386.48, ['z'] = 67.85 , nom = "Bridge Street 4"},
		SpawnVehicle = { ['x'] = 1056.2, ['y'] = -386.48, ['z'] = 67.85 , nom = "Bridge Street 4"},
		menu = { ['x'] = 1063.4, ['y'] = -374.5, ['z'] = -5.06 , nom = "Bridge Street 4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1055.05, ['y'] = -376.36, ['z'] = -5.02 , nom = "Bridge Street 4"},
	},
	["West Mirror Drive 4"] = {
		positionFrom = { ['x'] = 1029.15, ['y'] = -408.85, ['z'] = 65.95, nom = "West Mirror Drive 4", precio = 450000},
		positionTo = { ['x'] = 1017.62, ['y'] = -405.56, ['z'] = -5.06 , nom = "West Mirror Drive 4", precio = 450000},
		GuardarVehiculo = { ['x'] = 1021.44, ['y'] = -417.31, ['z'] = 65.95 , nom = "West Mirror Drive 4"},
		SpawnVehicle = { ['x'] = 1021.44, ['y'] = -417.31, ['z'] = 65.95 , nom = "West Mirror Drive 4"},
		menu = { ['x'] = 1032.39, ['y'] = -404.5, ['z'] = -5.06 , nom = "West Mirror Drive 4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1024.08, ['y'] = -406.4, ['z'] = -5.02 , nom = "West Mirror Drive 4"},
	},
	["West Mirror Drive 5"] = {
		positionFrom = { ['x'] = 987.47, ['y'] = -433.12, ['z'] = 64.05, nom = "West Mirror Drive 5", precio = 200000},
		positionTo = { ['x'] = 977.71, ['y'] = -435.25, ['z'] = -5.06 , nom = "West Mirror Drive 5", precio = 200000},
		GuardarVehiculo = { ['x'] = 989.98, ['y'] = -436.68, ['z'] = 63.74 , nom = "West Mirror Drive 5"},
		SpawnVehicle = { ['x'] = 989.98, ['y'] = -436.68, ['z'] = 63.74 , nom = "West Mirror Drive 5"},
		menu = { ['x'] = 992.39, ['y'] = -434.5, ['z'] = -5.06 , nom = "West Mirror Drive 5", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 984.07, ['y'] = -436.43, ['z'] = -5.02 , nom = "West Mirror Drive 5"},
	},
	["West Mirror Drive 6"] = {
		positionFrom = { ['x'] = 944.24, ['y'] = -463.47, ['z'] = 61.4, nom = "West Mirror Drive 6", precio = 500000},
		positionTo = { ['x'] = 935.56, ['y'] = -462.43, ['z'] = -5.06 , nom = "West Mirror Drive 6", precio = 500000},
		GuardarVehiculo = { ['x'] = 942.51, ['y'] = -468.57, ['z'] = 61.25 , nom = "West Mirror Drive 6"},
		SpawnVehicle = { ['x'] = 942.51, ['y'] = -468.57, ['z'] = 61.25 , nom = "West Mirror Drive 6"},
		menu = { ['x'] = 950.39, ['y'] = -461.5, ['z'] = -5.06 , nom = "West Mirror Drive 6", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 942.24, ['y'] = -463.32, ['z'] = -5.02 , nom = "West Mirror Drive 6"},
	},
	["West Mirror Drive 7"] = {
		positionFrom = { ['x'] = 906.36, ['y'] = -489.58, ['z'] = 59.44, nom = "West Mirror Drive 7", precio = 200000},
		positionTo = { ['x'] = 893.64, ['y'] = -482.32, ['z'] = -5.06 , nom = "West Mirror Drive 7", precio = 200000},
		GuardarVehiculo = { ['x'] = 913.81, ['y'] = -488.64, ['z'] = 59.04 , nom = "West Mirror Drive 7"},
		SpawnVehicle = { ['x'] = 913.81, ['y'] = -488.64, ['z'] = 59.04 , nom = "West Mirror Drive 7"},
		menu = { ['x'] = 908.39, ['y'] = -481.5, ['z'] = -5.06 , nom = "West Mirror Drive 7", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 900.27, ['y'] = -483.21, ['z'] = -5.02 , nom = "West Mirror Drive 7"},
	},
	["West Mirror Drive 8"] = {
		positionFrom = { ['x'] = 861.104, ['y'] = -509.16, ['z'] = 57.52, nom = "West Mirror Drive 8", precio = 480000},
		positionTo = { ['x'] = 849.73, ['y'] = -512.42, ['z'] = -5.06 , nom = "West Mirror Drive 8", precio = 480000},
		GuardarVehiculo = { ['x'] = 857.98, ['y'] = -521.08, ['z'] = 57.3 , nom = "West Mirror Drive 8"},
		SpawnVehicle = { ['x'] = 857.98, ['y'] = -521.08, ['z'] = 57.3 , nom = "West Mirror Drive 8"},
		menu = { ['x'] = 864.39, ['y'] = -511.5, ['z'] = -5.06 , nom = "West Mirror Drive 8", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 856.18, ['y'] = -513.18, ['z'] = -5.02 , nom = "West Mirror Drive 8"},
	},
	["Nikola Place 1"] = {
		positionFrom = { ['x'] = 1303.11, ['y'] = -527.42, ['z'] = 71.46, nom = "Nikola Place 1", precio = 500000},
		positionTo = { ['x'] = 1300.66, ['y'] = -525.09, ['z'] = 0.94 , nom = "Nikola Place 1", precio = 500000},
		GuardarVehiculo = { ['x'] = 1308.87, ['y'] = -533.53, ['z'] = 71.31 , nom = "Nikola Place 1"},
		SpawnVehicle = { ['x'] = 1308.87, ['y'] = -533.53, ['z'] = 71.31 , nom = "Nikola Place 1"},
		menu = { ['x'] = 1315.47, ['y'] = -523.58, ['z'] = 0.93 , nom = "Nikola Place 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1307.64, ['y'] = -527.06, ['z'] = 0.93 , nom = "Nikola Place 1"},
	},
	["Nikola Place 2"] = {
		positionFrom = { ['x'] = 1328.49, ['y'] = -535.96, ['z'] = 72.44, nom = "Nikola Place 2", precio = 500000},
		positionTo = { ['x'] = 1327.54, ['y'] = -534.08, ['z'] = 0.93 , nom = "Nikola Place 2", precio = 500000},
		GuardarVehiculo = { ['x'] = 1317.8, ['y'] = -535.15, ['z'] = 72.05 , nom = "Nikola Place 2"},
		SpawnVehicle = { ['x'] = 1317.8, ['y'] = -535.15, ['z'] = 72.05 , nom = "Nikola Place 2"},
		menu = { ['x'] = 1342.38, ['y'] = -532.51, ['z'] = 0.93 , nom = "Nikola Place 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1334.2, ['y'] = -535.87, ['z'] = 0.97 , nom = "Nikola Place 2"},
	},
	["Nikola Place 3"] = {
		positionFrom = { ['x'] = 1348.24, ['y'] = -546.95, ['z'] = 73.89, nom = "Nikola Place 3", precio = 500000},
		positionTo = { ['x'] = 1350.58, ['y'] = -542.5, ['z'] = 0.13 , nom = "Nikola Place 3", precio = 500000},
		GuardarVehiculo = { ['x'] = 1353.92, ['y'] = -553.07, ['z'] = 74.0 , nom = "Nikola Place 3"},
		SpawnVehicle = { ['x'] = 1353.92, ['y'] = -553.07, ['z'] = 74.0 , nom = "Nikola Place 3"},
		menu = { ['x'] = 1365.54, ['y'] = -541.0, ['z'] = 0.13 , nom = "Nikola Place 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1357.48, ['y'] = -544.34, ['z'] = 0.17 , nom = "Nikola Place 3"},
	},
	["Nikola Place 4"] = {
		positionFrom = { ['x'] = 1373.28, ['y'] = -555.66, ['z'] = 74.69, nom = "Nikola Place 4", precio = 500000},
		positionTo = { ['x'] = 1374.21, ['y'] = -550.28, ['z'] = -0.97 , nom = "Nikola Place 4", precio = 500000},
		GuardarVehiculo = { ['x'] = 1362.99, ['y'] = -553.09, ['z'] = 74.34 , nom = "Nikola Place 4"},
		SpawnVehicle = { ['x'] = 1362.99, ['y'] = -553.09, ['z'] = 74.34 , nom = "Nikola Place 4"},
		menu = { ['x'] = 1389.08, ['y'] = -548.61, ['z'] = -0.97 , nom = "Nikola Place 4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1380.87, ['y'] = -551.95, ['z'] = -0.93 , nom = "Nikola Place 4"},
	},
	["Nikola Place 5"] = {
		positionFrom = { ['x'] = 1388.4, ['y'] = -569.61, ['z'] = 74.5, nom = "Nikola Place 5", precio = 500000},
		positionTo = { ['x'] = 1393.65, ['y'] = -569.14, ['z'] = 0.94 , nom = "Nikola Place 5", precio = 500000},
		GuardarVehiculo = { ['x'] = 1388.23, ['y'] = -577.86, ['z'] = 74.34 , nom = "Nikola Place 5"},
		SpawnVehicle = { ['x'] = 1388.23, ['y'] = -577.86, ['z'] = 74.34 , nom = "Nikola Place 5"},
		menu = { ['x'] = 1408.57, ['y'] = -567.58, ['z'] = 0.94 , nom = "Nikola Place 5", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1400.64, ['y'] = -570.95, ['z'] = 0.98 , nom = "Nikola Place 5"},
	},
	["Nikola Place 6"] = {
		positionFrom = { ['x'] = 1385.96, ['y'] = -593.24, ['z'] = 74.49, nom = "Nikola Place 6", precio = 500000},
		positionTo = { ['x'] = 1385.59, ['y'] = -598.08, ['z'] = -1.06 , nom = "Nikola Place 6", precio = 500000},
		GuardarVehiculo = { ['x'] = 1378.58, ['y'] = -596.45, ['z'] = 74.34 , nom = "Nikola Place 6"},
		SpawnVehicle = { ['x'] = 1378.58, ['y'] = -596.45, ['z'] = 74.34 , nom = "Nikola Place 6"},
		menu = { ['x'] = 1400.56, ['y'] = -596.54, ['z'] = -1.06 , nom = "Nikola Place 6", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1392.61, ['y'] = -599.94, ['z'] = -1.02 , nom = "Nikola Place 6"},
	},
	["Nikola Place 7"] = {
		positionFrom = { ['x'] = 1341.33, ['y'] = -597.43, ['z'] = 74.7, nom = "Nikola Place 7", precio = 500000},
		positionTo = { ['x'] = 1329.33, ['y'] = -615.07, ['z'] = 0.94 , nom = "Nikola Place 7", precio = 500000},
		GuardarVehiculo = { ['x'] = 1349.28, ['y'] = -603.18, ['z'] = 74.36 , nom = "Nikola Place 7"},
		SpawnVehicle = { ['x'] = 1349.28, ['y'] = -603.18, ['z'] = 74.36 , nom = "Nikola Place 7"},
		menu = { ['x'] = 1344.39, ['y'] = -613.51, ['z'] = 0.94 , nom = "Nikola Place 7", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1336.41, ['y'] = -616.94, ['z'] = 0.98 , nom = "Nikola Place 7"},
	},
	["Nikola Place 8"] = {
		positionFrom = { ['x'] = 1323.47, ['y'] = -582.9, ['z'] = 73.25, nom = "Nikola Place 8", precio = 500000},
		positionTo = { ['x'] = 1311.41, ['y'] = -596.07, ['z'] = 0.94 , nom = "Nikola Place 8", precio = 500000},
		GuardarVehiculo = { ['x'] = 1318.44, ['y'] = -576.43, ['z'] = 73.01 , nom = "Nikola Place 8"},
		SpawnVehicle = { ['x'] = 1318.44, ['y'] = -576.43, ['z'] = 73.01 , nom = "Nikola Place 8"},
		menu = { ['x'] = 1326.39, ['y'] = -594.61, ['z'] = 0.94 , nom = "Nikola Place 8", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1318.22, ['y'] = -597.87, ['z'] = 0.98 , nom = "Nikola Place 8"},
	},
	["Nikola Place 9"] = {
		positionFrom = { ['x'] = 1301.1, ['y'] = -574.04, ['z'] = 71.73, nom = "Nikola Place 9", precio = 500000},
		positionTo = { ['x'] = 1287.39, ['y'] = -586.07, ['z'] = 0.94 , nom = "Nikola Place 9", precio = 500000},
		GuardarVehiculo = { ['x'] = 1294.77, ['y'] = -568.2, ['z'] = 71.23 , nom = "Nikola Place 9"},
		SpawnVehicle = { ['x'] = 1294.77, ['y'] = -568.2, ['z'] = 71.23 , nom = "Nikola Place 9"},
		menu = { ['x'] = 1302.4, ['y'] = -584.5, ['z'] = 0.94 , nom = "Nikola Place 9", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 5000},
		armario = { ['x'] = 1294.21, ['y'] = -587.86, ['z'] = 0.98 , nom = "Nikola Place 9"},
	},
	--------------------------------------------- Casas pobres -------------------------------------------------
	["GroveStreet1"] = {
		positionFrom = { ['x'] = 5.1, ['y'] = -1884.03, ['z'] = 23.7 , nom = "GroveStreet1", precio = 120000},
		positionTo = { ['x'] = 343.02, ['y'] = -226.96, ['z'] = -45.24 , nom = "GroveStreet1", precio = 120000},
		GuardarVehiculo = { ['x'] = 16.17, ['y'] = -1884.11, ['z'] = 23.25 , nom = "GroveStreet1"},
		SpawnVehicle = { ['x'] = 16.17, ['y'] = -1884.11, ['z'] = 23.25 , nom = "GroveStreet1"},
		menu = { ['x'] = 345.31, ['y'] = -226.1, ['z'] = -45.24 , nom = "GroveStreet1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] =343.38, ['y'] = -220.56, ['z'] = -45.24 , nom = "GroveStreet1"},
	},
	["GroveStreet2"] = {
		positionFrom = { ['x'] = 23.34, ['y'] = -1896.56, ['z'] = 22.97 , nom = "GroveStreet2", precio = 130000},
		positionTo = { ['x'] = 342.81, ['y'] = -227.15, ['z'] = -55.45 , nom = "GroveStreet2", precio = 130000},
		GuardarVehiculo = { ['x'] = 34.42, ['y'] = -1893.47, ['z'] = 22.21 , nom = "GroveStreet2"},
		SpawnVehicle = { ['x'] = 34.42, ['y'] = -1893.47, ['z'] = 22.21 , nom = "GroveStreet2"},
		menu = { ['x'] = 345.31, ['y'] = -226.34, ['z'] = -55.45 , nom = "GroveStreet2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 343.45, ['y'] = -221.32, ['z'] = -55.45 , nom = "GroveStreet2"},
	},
	["GroveStreet3"] = {
		positionFrom = { ['x'] = 39.05, ['y'] = -1911.64, ['z'] = 21.95 , nom = "GroveStreet3", precio = 140000},
		positionTo = { ['x'] = 343.66, ['y'] = -208.83, ['z'] = -39.15 , nom = "GroveStreet3", precio = 140000},
		GuardarVehiculo = { ['x'] = 47.72, ['y'] = -1914.04, ['z'] = 21.66 , nom = "GroveStreet3"},
		SpawnVehicle = { ['x'] = 47.72, ['y'] = -1914.04, ['z'] = 21.66 , nom = "GroveStreet3"},
		menu = { ['x'] = 344.62, ['y'] = -210.13, ['z'] = -39.99 , nom = "GroveStreet3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 342.76, ['y'] = -204.24, ['z'] = -39.99 , nom = "GroveStreet3"},
	},
	["GroveStreet4"] = {
		positionFrom = { ['x'] = 72.16, ['y'] = -1939.08, ['z'] = 21.37 , nom = "GroveStreet4", precio = 130000},
		positionTo = { ['x'] = 342.35, ['y'] = -211.6, ['z'] = -45.88 , nom = "GroveStreet4", precio = 130000},
		GuardarVehiculo = { ['x'] = 81.53, ['y'] = -1932.26, ['z'] = 20.73 , nom = "GroveStreet4"},
		SpawnVehicle = { ['x'] = 81.53, ['y'] = -1932.26, ['z'] = 20.73 , nom = "GroveStreet4"},
		menu = { ['x'] = 344.72, ['y'] = -210.68, ['z'] = -45.88 , nom = "GroveStreet4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 342.51, ['y'] = -205.42, ['z'] = -45.88 , nom = "GroveStreet4"},
	},
	["GroveStreet5"] = {
		positionFrom = { ['x'] = 56.61, ['y'] = -1922.58, ['z'] = 21.91 , nom = "GroveStreet5", precio = 120000},
		positionTo = { ['x'] = 332.87, ['y'] = -239.74, ['z'] = -38.2 , nom = "GroveStreet5", precio = 120000},
		GuardarVehiculo = { ['x'] = 68.41, ['y'] = -1921.38, ['z'] = 21.33 , nom = "GroveStreet5"},
		SpawnVehicle = { ['x'] = 68.41, ['y'] = -1921.38, ['z'] = 21.33 , nom = "GroveStreet5"},
		menu = { ['x'] = 335.09, ['y'] = -239.12, ['z'] = -38.2 , nom = "GroveStreet5", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.89, ['y'] = -233.5, ['z'] = -38.2 , nom = "GroveStreet5"},
	},
	["GroveStreet6"] = {
		positionFrom = { ['x'] = 76.46, ['y'] = -1947.99, ['z'] = 21.17 , nom = "GroveStreet6", precio = 120000},
		positionTo = { ['x'] = 310.6, ['y'] = -238.86, ['z'] = -38.99 , nom = "GroveStreet6", precio = 120000},
		GuardarVehiculo = { ['x'] = 89.28, ['y'] = -1941.74, ['z'] = 20.7 , nom = "GroveStreet6"},
		SpawnVehicle = { ['x'] = 89.28, ['y'] = -1941.74, ['z'] = 20.7 , nom = "GroveStreet6"},
		menu = { ['x'] = 313.25, ['y'] = -237.57, ['z'] = -38.99 , nom = "GroveStreet6", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 311.07, ['y'] = -232.47, ['z'] = -38.99 , nom = "GroveStreet6"},
	},
	["GroveStreet7"] = {
		positionFrom = { ['x'] = 85.86, ['y'] = -1959.7, ['z'] = 21.12 , nom = "GroveStreet7", precio = 140000},
		positionTo = { ['x'] = 332.56, ['y'] = -240.13, ['z'] = -44.61 , nom = "GroveStreet7", precio = 140000},
		GuardarVehiculo = { ['x'] = 94.65, ['y'] = -1961.35, ['z'] = 20.75 , nom = "GroveStreet7"},
		SpawnVehicle = { ['x'] = 94.65, ['y'] = -1961.35, ['z'] = 20.75 , nom = "GroveStreet7"},
		menu = { ['x'] = 334.95, ['y'] = -238.86, ['z'] = -44.61 , nom = "GroveStreet7", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.89, ['y'] = -233.28, ['z'] = -44.61 , nom = "GroveStreet7"},
	},
	["GroveStreet8"] = {
		positionFrom = { ['x'] = 114.5, ['y'] = -1961.14, ['z'] = 21.33 , nom = "GroveStreet8", precio = 120000},
		positionTo = { ['x'] = 332.66, ['y'] = -238.91, ['z'] = -55.39 , nom = "GroveStreet8", precio = 120000},
		GuardarVehiculo = { ['x'] = 116.35, ['y'] = -1949.67, ['z'] = 20.72 , nom = "GroveStreet8"},
		SpawnVehicle = { ['x'] = 116.35, ['y'] = -1949.67, ['z'] = 20.72 , nom = "GroveStreet8"},
		menu = { ['x'] = 335.35, ['y'] = -237.57, ['z'] = -55.39 , nom = "GroveStreet8", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.81, ['y'] = -232.4, ['z'] = -55.39 , nom = "GroveStreet8"},
	},
	["GroveStreet9"] = {
		positionFrom = { ['x'] = 126.74, ['y'] = -1929.99, ['z'] = 21.38 , nom = "GroveStreet9", precio = 130000},
		positionTo = { ['x'] = 332.57, ['y'] = -228.68, ['z'] = -38.83, nom = "GroveStreet9", precio = 130000},
		GuardarVehiculo = { ['x'] = 119.75, ['y'] = -1940.57, ['z'] = 20.72 , nom = "GroveStreet9"},
		SpawnVehicle = { ['x'] = 119.75, ['y'] = -1940.57, ['z'] = 20.72 , nom = "GroveStreet9"},
		menu = { ['x'] = 334.97, ['y'] = -227.44, ['z'] = -38.83, nom = "GroveStreet9", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.9, ['y'] = -222.13, ['z'] = -38.83 , nom = "GroveStreet9"},
	},
	["GroveStreet10"] = {
		positionFrom = { ['x'] = 118.74, ['y'] = -1921.09, ['z'] = 21.32 , nom = "GroveStreet10", precio = 130000},
		positionTo = { ['x'] = 332.41, ['y'] = -227.18, ['z'] = -45.4 , nom = "GroveStreet10", precio = 130000},
		GuardarVehiculo = { ['x'] = 109.5, ['y'] = -1925.27, ['z'] = 20.75 , nom = "GroveStreet10"},
		SpawnVehicle = { ['x'] = 109.5, ['y'] = -1925.27, ['z'] = 20.75 , nom = "GroveStreet10"},
		menu = { ['x'] = 334.91, ['y'] = -225.92, ['z'] = -45.4, nom = "GroveStreet10", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.76, ['y'] = -220.4, ['z'] = -45.4 , nom = "GroveStreet10"},
	},
	["GroveStreet11"] = {
		positionFrom = { ['x'] = 100.93, ['y'] = -1912.51, ['z'] = 21.41 , nom = "GroveStreet11", precio = 120000},
		positionTo = { ['x'] = 332.66, ['y'] = -227.15, ['z'] = -55.79 , nom = "GroveStreet11", precio = 120000},
		GuardarVehiculo = { ['x'] = 89.46, ['y'] = -1917.07, ['z'] = 20.73 , nom = "GroveStreet11"},
		SpawnVehicle = { ['x'] = 89.46, ['y'] = -1917.07, ['z'] = 20.73 , nom = "GroveStreet11"},
		menu = { ['x'] = 335.12, ['y'] = -225.91, ['z'] = -55.79 , nom = "GroveStreet11", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.87, ['y'] = -220.86, ['z'] = -55.79 , nom = "GroveStreet11"},
	},
	["GroveStreet12"] = {
		positionFrom = { ['x'] = 54.49, ['y'] = -1873.15, ['z'] = 22.81 , nom = "GroveStreet12", precio = 120000},
		positionTo = { ['x'] = 332.59, ['y'] = -209.91, ['z'] = -38.98 , nom = "GroveStreet12", precio = 120000},
		GuardarVehiculo = { ['x'] = 52.2, ['y'] = -1878.8, ['z'] = 22.2 , nom = "GroveStreet12"},
		SpawnVehicle = { ['x'] = 52.2, ['y'] = -1878.8, ['z'] = 22.2 , nom = "GroveStreet12"},
		menu = { ['x'] = 334.93, ['y'] = -208.91, ['z'] = -38.98 , nom = "GroveStreet12", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 332.89, ['y'] = -203.17, ['z'] = -38.98 , nom = "GroveStreet12"},
	},
	["GroveStreet13"] = {
		positionFrom = { ['x'] = 46.05, ['y'] = -1864.28, ['z'] = 23.28 , nom = "GroveStreet13", precio = 140000},
		positionTo = { ['x'] = 333.03, ['y'] = -213.05, ['z'] = -45.55 , nom = "GroveStreet13", precio = 140000},
		GuardarVehiculo = { ['x'] = 32.79, ['y'] = -1862, ['z'] = 23.03 , nom = "GroveStreet13"},
		SpawnVehicle = { ['x'] = 32.79, ['y'] = -1862, ['z'] = 23.03 , nom = "GroveStreet13"},
		menu = { ['x'] = 335.83, ['y'] = -211.67, ['z'] = -45.55 , nom = "GroveStreet13", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 333.46, ['y'] = -206.4, ['z'] = -45.55 , nom = "GroveStreet13"},
	},
	["Grove Street 541"] = {
		positionFrom = { ['x'] = 29.88, ['y'] = -1854.14, ['z'] = 24.07 , nom = "Grove Street 541", precio = 130000},
		positionTo = { ['x'] = 332.8, ['y'] = -212.26, ['z'] = -55.39, nom = "Grove Street 541", precio = 130000},
		GuardarVehiculo = { ['x'] = 21.13, ['y'] = -1855.43, ['z'] = 23.68 , nom = "Grove Street 541"},
		SpawnVehicle = { ['x'] = 21.13, ['y'] = -1855.43, ['z'] = 23.68 , nom = "Grove Street 541"},
		menu = { ['x'] = 335.3, ['y'] = -211, ['z'] = -55.39 , nom = "Grove Street 541", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 333.12, ['y'] = -205.51, ['z'] = -55.39 , nom = "Grove Street 541"},
	},
	
	["Covenant Avenue 1"] = {
		positionFrom = { ['x'] = 104.1, ['y'] = -1885.37, ['z'] = 24.32 , nom = "Covenant Avenue 1", precio = 120000},
		positionTo = { ['x'] = 343.25, ['y'] = -239.22, ['z'] = -39.12 , nom = "Covenant Avenue 1", precio = 120000},
		GuardarVehiculo = { ['x'] = 109.14, ['y'] = -1878.11, ['z'] = 23.88 , nom = "Covenant Avenue 1"},
		SpawnVehicle = { ['x'] = 109.14, ['y'] = -1878.11, ['z'] = 23.88 , nom = "Covenant Avenue 1"},
		menu = { ['x'] = 346.12, ['y'] = -237.59, ['z'] = -39.12 , nom = "Covenant Avenue 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 343.7, ['y'] = -232.31, ['z'] = -39.12 , nom = "Covenant Avenue 1"},
	},
	["Covenant Avenue 2"] = {
		positionFrom = { ['x'] = 115.33, ['y'] = -1887.96, ['z'] = 23.93 , nom = "Covenant Avenue 2", precio = 130000},
		positionTo = { ['x'] = 342.52, ['y'] = -239.03, ['z'] = -45.19 , nom = "Covenant Avenue 2", precio = 130000},
		GuardarVehiculo = { ['x'] = 126.8, ['y'] = -1882.61, ['z'] = 23.57 , nom = "Covenant Avenue 2"},
		SpawnVehicle = { ['x'] = 126.8, ['y'] = -1882.61, ['z'] = 23.57 , nom = "Covenant Avenue 2"},
		menu = { ['x'] = 344.83, ['y'] = -238.1, ['z'] = -45.19 , nom = "Covenant Avenue 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 342.82, ['y'] = -232.6, ['z'] = -45.19 , nom = "Covenant Avenue 2"},
	},
	
	["Covenant Avenue 3"] = {
		positionFrom = { ['x'] = 128.23, ['y'] = -1896.96, ['z'] = 23.67 , nom = "Covenant Avenue 3", precio = 120000},
		positionTo = { ['x'] = 343.76, ['y'] = -226.29, ['z'] = -39.49 , nom = "Covenant Avenue 3", precio = 120000},
		GuardarVehiculo = { ['x'] = 138.99, ['y'] = -1893.87, ['z'] = 23.53 , nom = "Covenant Avenue 3"},
		SpawnVehicle = { ['x'] = 138.99, ['y'] = -1893.87, ['z'] = 23.53 , nom = "Covenant Avenue 3"},
		menu = { ['x'] = 346.38, ['y'] = -225.66, ['z'] = -39.49 , nom = "Covenant Avenue 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 0,
		itemsprecio = 0},
		armario = { ['x'] = 343.99, ['y'] = -220.6, ['z'] = -39.49 , nom = "Covenant Avenue 3"},
	},
	------------------------------------------ Casas centro ----------------------------------------------------
	["Strawberry1"] = {
		positionFrom = { ['x'] = 321.93, ['y'] = -1284.42, ['z'] = 30.57 , nom = "Strawberry1", precio = 150000},
		positionTo = { ['x'] = 321.78, ['y'] = -240.2, ['z'] = -38.58 , nom = "Strawberry1", precio = 150000},
		GuardarVehiculo = { ['x'] = 335.39, ['y'] = -1281.8, ['z'] = 31.92 , nom = "Strawberry1"},
		SpawnVehicle = { ['x'] = 335.39, ['y'] = -1281.8, ['z'] = 31.92 , nom = "Strawberry1"},
		menu = { ['x'] = 324.33, ['y'] = -239.09, ['z'] = -38.58 , nom = "Strawberry1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 322.12, ['y'] = -233.81, ['z'] = -38.58 , nom = "Strawberry1"},
	},
	["Strawberry2"] = {
		positionFrom = { ['x'] = 327.85, ['y'] = -1258.67, ['z'] = 31.95 , nom = "Strawberry2", precio = 150000},
		positionTo = { ['x'] = 321.48, ['y'] = -240.3, ['z'] = -44.83 , nom = "Strawberry2", precio = 150000},
		GuardarVehiculo = { ['x'] = 335.08, ['y'] = -1259.45, ['z'] = 31.66 , nom = "Strawberry2"},
		SpawnVehicle = { ['x'] = 335.08, ['y'] = -1259.45, ['z'] = 31.66 , nom = "Strawberry2"},
		menu = { ['x'] = 323.88, ['y'] = -239.33, ['z'] = -44.83 , nom = "Strawberry2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.86, ['y'] = -234.05, ['z'] = -44.83 , nom = "Strawberry2"},
	},
	["Vespucci Boulevard 1"] = {
		positionFrom = { ['x'] = -1022.48, ['y'] = -896.74, ['z'] = 5.42 , nom = "Vespucci Boulevard 1", precio = 110000},
		positionTo = { ['x'] = 321.8, ['y'] = -238.45, ['z'] = -55.39 , nom = "Vespucci Boulevard 1", precio = 110000},
		GuardarVehiculo = { ['x'] = -1024.4, ['y'] = -888.56, ['z'] = 5.76 , nom = "Vespucci Boulevard 1"},
		SpawnVehicle = { ['x'] = -1024.4, ['y'] = -888.56, ['z'] = 5.76 , nom = "Vespucci Boulevard 1"},
		menu = { ['x'] = 323.81, ['y'] = -237.25, ['z'] = -55.39 , nom = "Vespucci Boulevard 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 322, ['y'] = -232.2, ['z'] = -55.39 , nom = "Vespucci Boulevard 1"},
	},
	["Vespucci Boulevard 2"] = {
		positionFrom = { ['x'] = -1031.4, ['y'] = -903.07, ['z'] = 3.69 , nom = "Vespucci Boulevard 2", precio = 100000},
		positionTo = { ['x'] = 320.85, ['y'] = -227.18, ['z'] = -39.39 , nom = "Vespucci Boulevard 2", precio = 100000},
		GuardarVehiculo = { ['x'] = -1035.37, ['y'] = -897.58, ['z'] = 4.55 , nom = "Vespucci Boulevard 2"},
		SpawnVehicle = { ['x'] = -1035.37, ['y'] = -897.58, ['z'] = 4.55 , nom = "Vespucci Boulevard 2"},
		menu = { ['x'] = 323.54, ['y'] = -225.89, ['z'] = -39.39 , nom = "Vespucci Boulevard 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.31, ['y'] = -220.71, ['z'] = -39.39 , nom = "Vespucci Boulevard 2"},
	},
	["Vespucci Boulevard 3"] = {
		positionFrom = { ['x'] = -1043.48, ['y'] = -923.83, ['z'] = 3.15 , nom = "Vespucci Boulevard 3", precio = 110000},
		positionTo = { ['x'] = 321.62, ['y'] = -228.69, ['z'] = -44.9 , nom = "Vespucci Boulevard 3", precio = 110000},
		GuardarVehiculo = { ['x'] = -1053.94, ['y'] = -905.35, ['z'] = 4.37 , nom = "Vespucci Boulevard 3"},
		SpawnVehicle = { ['x'] = -1053.94, ['y'] = -905.35, ['z'] = 4.37 , nom = "Vespucci Boulevard 3"},
		menu = { ['x'] = 324.02, ['y'] = -227.66, ['z'] = -44.9 , nom = "Vespucci Boulevard 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 322.02, ['y'] = -222.19, ['z'] = -44.9 , nom = "Vespucci Boulevard 3"},
	},
	["Vespucci Boulevard 4"] = {
		positionFrom = { ['x'] = -1061.5, ['y'] = -942.89, ['z'] = 2.21 , nom = "Vespucci Boulevard 4", precio = 110000},
		positionTo = { ['x'] = 321.85, ['y'] = -226.9, ['z'] = -55.57 , nom = "Vespucci Boulevard 4", precio = 110000},
		GuardarVehiculo = { ['x'] = -1082.03, ['y'] = -919.86, ['z'] = 3.51 , nom = "Vespucci Boulevard 4"},
		SpawnVehicle = { ['x'] = -1082.03, ['y'] = -919.86, ['z'] = 3.51 , nom = "Vespucci Boulevard 4"},
		menu = { ['x'] = 324.08, ['y'] = -225.67, ['z'] = -55.57 , nom = "Vespucci Boulevard 4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.95, ['y'] = -220.35, ['z'] = -55.57 , nom = "Vespucci Boulevard 4"},
	},
	["Vespucci Boulevard 5"] = {
		positionFrom = { ['x'] = -1111.67, ['y'] = -902.19, ['z'] = 3.79 , nom = "Vespucci Boulevard 5", precio = 95000},
		positionTo = { ['x'] = 321.33, ['y'] = -211.15, ['z'] = -38.9 , nom = "Vespucci Boulevard 5", precio = 95000},
		GuardarVehiculo = { ['x'] = -1093.81, ['y'] = -889.12, ['z'] = 3.59 , nom = "Vespucci Boulevard 5"},
		SpawnVehicle = { ['x'] = -1093.81, ['y'] = -889.12, ['z'] = 3.59 , nom = "Vespucci Boulevard 5"},
		menu = { ['x'] = 323.8, ['y'] = -210.22, ['z'] = -38.9 , nom = "Vespucci Boulevard 5", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.71, ['y'] = -204.9, ['z'] = -38.9 , nom = "Vespucci Boulevard 5"},
	},
	["Imagination Court 1"] = {
		positionFrom = { ['x'] = -1041.77, ['y'] = -1025.48, ['z'] = 2.55 , nom = "Imagination Court 1", precio = 125000},
		positionTo = { ['x'] = 322.64, ['y'] = -212.81, ['z'] = -45.56 , nom = "Imagination Court 1", precio = 125000},
		GuardarVehiculo = { ['x'] = -1041.12, ['y'] = -1020.44, ['z'] = 2.12 , nom = "Imagination Court 1"},
		SpawnVehicle = { ['x'] = -1041.12, ['y'] = -1020.44, ['z'] = 2.12 , nom = "Imagination Court 1"},
		menu = { ['x'] = 324.92, ['y'] = -211.84, ['z'] = -45.56 , nom = "Imagination Court 1", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 322.89, ['y'] = -206.46, ['z'] = -45.56 , nom = "Imagination Court 1"},
	},
	["Imagination Court 2"] = {
		positionFrom = { ['x'] = -1019.2, ['y'] = -1018.71, ['z'] = 2.15 , nom = "Imagination Court 2", precio = 115000},
		positionTo = { ['x'] = 320.92, ['y'] = -213.09, ['z'] = -55.39 , nom = "Imagination Court 2", precio = 115000},
		GuardarVehiculo = { ['x'] = -1023.97, ['y'] = -1015.09, ['z'] = 2.15 , nom = "Imagination Court 2"},
		SpawnVehicle = { ['x'] = -1023.97, ['y'] = -1015.09, ['z'] = 2.15 , nom = "Imagination Court 2"},
		menu = { ['x'] = 323.59, ['y'] = -211.81, ['z'] = -55.39 , nom = "Imagination Court 2", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.39, ['y'] = -206.4, ['z'] = -55.39 , nom = "Imagination Court 2"},
	},
	["Imagination Court 3"] = {
		positionFrom = { ['x'] = -1051.1, ['y'] = -1006.38, ['z'] = 6.41 , nom = "Imagination Court 3", precio = 115000},
		positionTo = { ['x'] = 321.15, ['y'] = -199.49, ['z'] = -39.22 , nom = "Imagination Court 3", precio = 115000},
		GuardarVehiculo = { ['x'] = -1044.34, ['y'] = -1008.37, ['z'] = 2.15 , nom = "Imagination Court 3"},
		SpawnVehicle = { ['x'] = -1044.34, ['y'] = -1008.37, ['z'] = 2.15 , nom = "Imagination Court 3"},
		menu = { ['x'] = 321.1, ['y'] = -198.58, ['z'] = -39.22 , nom = "Imagination Court 3", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.37, ['y'] = -192.99, ['z'] = -39.22 , nom = "Imagination Court 3"},
	},
        ["Imagination 4"] = {
		positionFrom = { ['x'] = 472.14, ['y'] = -1775.49, ['z'] = 28.67 , nom = "Imagination Court 4", precio = 215000},
		positionTo = { ['x'] = 321.34, ['y'] = -199.66, ['z'] = -45.58, nom = "Imagination Court 4", precio = 215000},
		GuardarVehiculo = { ['x'] = 478.67, ['y'] = -1777.66, ['z'] = 28.63 , nom = "Imagination Court 4"},
		SpawnVehicle = { ['x'] = 478.67, ['y'] = -1777.66, ['z'] = 28.63 , nom = "Imagination Court 4"},
		menu = { ['x'] = 323.44, ['y'] = -198.5, ['z'] = -45.58 , nom = "Imagination Court 4", 
		garageprecio = 10000, 
		armasprecio = 15000,
		dineroprecio = 5000,
		itemsprecio = 0},
		armario = { ['x'] = 321.45, ['y'] = -193.21, ['z'] = -45.58 , nom = "Imagination Court 4"},
	},

}

----------------------------------- LLAMADOS DEL SERVER -----------------------------------------
RegisterNetEvent('pk_casas:mejoras')
AddEventHandler('pk_casas:mejoras', function(dinero,armas,items,garage,venta)
	if dinero == 1 then
		mdinero = 1
	elseif dinero == 0 then
		mdinero = 0
	end
	
	if armas == 1 then
		marmas = 1
	elseif armas == 0 then
		marmas = 0
	end
	
	if items == 1 then
		mitems = 1
	elseif items == 0 then
		mitems = 0
	end
	if garage == 1 then
		mgarage = 1
	elseif garage == 0 then
		mgarage = 0
	elseif garage == 2 then
		mgarage = 2
	end
	
	if venta > 0 then
		mventa = venta
	elseif venta == 0 then
		mventa = 0
	end
	
end)

RegisterNetEvent('pk_casas:estado')
AddEventHandler('pk_casas:estado', function(estadopuerta)
if estadopuerta == 1 or estadopuerta == nil then
estado = 1
puertaesta = '~g~open'
elseif estadopuerta == 0 then
estado = 0
puertaesta = '~r~closed'
end
end)

RegisterNetEvent('pk_casas:estadopuerta')
AddEventHandler('pk_casas:estadopuerta', function(estadopuerta)
if estadopuerta == 1 or estadopuerta == nil then
estado = 1
puertaesta = '~g~open'
elseif estadopuerta == 0 then
estado = 0
puertaesta = '~r~closed'
end
local pos = GetEntityCoords(GetPlayerPed(-1), true)
		for k, j in pairs(TeleportFromTo) do
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 10.0)then
				TriggerServerEvent('pk_casas:checkcasa',j.positionFrom.nom)
			end
		end
end)

RegisterNetEvent('pk_casas:propietario')
AddEventHandler('pk_casas:propietario', function(valor,nombre)
if valor == 1 then
propietario = 1
nombrepropietario = nombre
elseif valor == 0 then
propietario = 0
end
end)

RegisterNetEvent('pk_casas:soyelpropietario')
AddEventHandler('pk_casas:soyelpropietario', function(valor,venta)
if valor == 1 then
soyelpropietario = 1
elseif valor == 0 then
soyelpropietario = 0
end
end)


-------------------------------------- FUNCIONES --------------------------------------------------
local PlayerData              = {}

------------------------------------- MOSTRAR AUTOS -------------------------------------------------
Citizen.CreateThread(function()
    local stop1 = 0
    local curPosFrom1 = nil
    while true do 
        local sleep = 500
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        if stop1 == 0 then
            for k, j in pairs(TeleportFromTo) do
                if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 6.0)then
					sleep = 5
                    TriggerServerEvent('pk_casas:checkcasa',j.GuardarVehiculo.nom)
					stop1 = 1
                    curPosFrom1 = j.GuardarVehiculo
                    break
                end
            end
        elseif(curPosFrom1 and Vdist(pos.x, pos.y, pos.z, curPosFrom1.x, curPosFrom1.y, curPosFrom1.z) > 6.0) then
            stop1 = 0
            curPosFrom1 = nil
        end
	Citizen.Wait(sleep)
    end
end)


------------------------------------------- ACTUALIZAR INFO DE CASA -----------------------------------
Citizen.CreateThread(function()
    local stop = 0
    local curPosFrom = nil
    while true do 
		local sleep = 500
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        if stop == 0 then
            for k, j in pairs(TeleportFromTo) do
                if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 8.0)then
					sleep = 5
                    TriggerServerEvent('pk_casas:checkcasa',j.positionFrom.nom)
					stop = 1
                    curPosFrom = j.positionFrom
                    break
                end
            end
        elseif(curPosFrom and Vdist(pos.x, pos.y, pos.z, curPosFrom.x, curPosFrom.y, curPosFrom.z) > 8.0) then
            stop = 0
            curPosFrom = nil
        end
		Citizen.Wait(sleep)
    end
end)
-------------------------------------------------------------------------------------------------------


Citizen.CreateThread(function()				
	while true do
		local sleep = 500
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k, j in pairs(TeleportFromTo) do

		------------------ ENTRAR --------------------------
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 7.0)then
				sleep = 5
				--TriggerServerEvent('pk_casas:checkcasa',j.positionFrom.nom)
				 --DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					if propietario == 0 then
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100,"~b~" ..j.positionFrom.nom.. "~s~ has no owner", 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.300,"Price: ~y~ £" ..j.positionFrom.precio.." ", 4, 0.2, 0.1, 255, 255, 255, 215)
					elseif propietario == 1 then
						if mventa > 0 then
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 0.800, "Property for sale by ~y~ £" ..mventa.." ", 4, 0.2, 0.1, 255, 255, 255, 215)
						end
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100,"~b~" ..j.positionFrom.nom.. "~s~ is from " ..nombrepropietario, 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.300, "Door: "..puertaesta, 4, 0.2, 0.1, 255, 255, 255, 215)
						if soyelpropietario == 1 then
						Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.600, "Press ~b~G~w~ to ~g~Open~w~/~r~Close ~w~the door", 4, 0.05, 0.05, 255, 255, 255, 215)
						end
					end
					
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to interact")--
						DrawSubtitleTimed(1000, 1)
						if IsControlJustPressed(1, 38) then
						TriggerServerEvent('pk_casas:checkcasa',j.positionFrom.nom)
							if propietario == 0 then
								AbrirMenuNoPropietario(j.positionFrom.nom,j.positionFrom.precio,j.positionTo.x, j.positionTo.y, j.positionTo.z, 'Visit')
							elseif propietario == 1 then
								if soyelpropietario == 1 then
									AbrirMenuSoyElPropietario(nombrepropietario,j.positionFrom.nom,j.positionFrom.precio,j.positionFrom.x, j.positionFrom.y, j.positionFrom.z, 'Enter')
								elseif soyelpropietario == 0 then
									AbrirMenuConPropietario(nombrepropietario,j.positionFrom.nom,j.positionFrom.precio,j.positionFrom.x, j.positionFrom.y, j.positionFrom.z, 'Enter')
								end
							end		
						end
						if IsControlJustPressed(1, 47) then
							TriggerServerEvent('pk_casas:checkcasa',j.positionFrom.nom)
							TriggerEvent('pk_casas:abrircerrarpuerta',j.positionFrom.nom)
						end
					end
				end
			end
							
			
			
			
			------------------------- SALIR ------------------
			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 7.0)then
				sleep = 5
				--TriggerServerEvent('pk_casas:checkcasa',j.positionTo.nom)
				-- MARCADOR PISO -- DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					if propietario == 0 then
						Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100,"~b~" ..j.positionTo.nom.. "~s~ has no owner", 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.300,"Price: ~y~ £" ..j.positionFrom.precio.." ", 4, 0.2, 0.1, 255, 255, 255, 215)
					elseif propietario == 1 then
						--Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100,"~b~" ..j.positionTo.nom.. "~s~ es de " ..nombrepropietario, 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.300, "Door: "..puertaesta, 4, 0.2, 0.1, 255, 255, 255, 215)
						if soyelpropietario == 1 then
						Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.600, "Press ~b~G~w~ to ~g~Open~w~/~r~Close ~w~the door", 4, 0.05, 0.05, 255, 255, 255, 215)
						end
					end
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to interact")
						DrawSubtitleTimed(1000, 1)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('pk_casas:checkcasa',j.positionTo.nom)
							Citizen.Wait(10)
							if propietario == 0 then
								AbrirMenuNoPropietario(j.positionTo.nom,j.positionTo.precio,j.positionFrom.x, j.positionFrom.y, j.positionFrom.z, 'Exit')
							elseif propietario == 1 then
								if soyelpropietario == 1 then
									AbrirMenuSoyElPropietario(nombrepropietario,j.positionTo.nom,j.positionTo.precio,j.positionTo.x, j.positionTo.y, j.positionTo.z, 'Exit')
								elseif soyelpropietario == 0 then
									AbrirMenuConPropietario(nombrepropietario,j.positionTo.nom,j.positionTo.precio,j.positionTo.x, j.positionTo.y, j.positionTo.z, 'Exit')
								end
							end
						end
						if IsControlJustPressed(1, 47) then
							TriggerServerEvent('pk_casas:checkcasa',j.positionTo.nom)
							TriggerEvent('pk_casas:abrircerrarpuerta',j.positionTo.nom)
						end
					end
				end
			end
		 if propietario == 1 then	
			if(Vdist(pos.x, pos.y, pos.z, j.menu.x, j.menu.y, j.menu.z) < 7.0)then
				sleep = 5
				if soyelpropietario == 1 then
				if(Vdist(pos.x, pos.y, pos.z, j.menu.x, j.menu.y, j.menu.z) < 5.0)then
						Drawing.draw3DText(j.menu.x, j.menu.y, j.menu.z - 1.100,"Manage property", 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.menu.x, j.menu.y, j.menu.z - 1.150,"^", 4, 0.4, 0.4, 255, 255, 0, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.menu.x, j.menu.y, j.menu.z) < 1.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to interact")
						DrawSubtitleTimed(1000, 1)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('pk_casas:checkcasa',j.menu.nom)
							AbrirMenuMejoras(j.menu.nom,j.menu.garageprecio,j.menu.armasprecio,j.menu.dineroprecio,j.menu.itemsprecio)
						end
					end
				end
				end
			end
			if(Vdist(pos.x, pos.y, pos.z, j.armario.x, j.armario.y, j.armario.z) < 7.0)then
				sleep = 5
				if soyelpropietario == 1 then
				if(Vdist(pos.x, pos.y, pos.z, j.armario.x, j.armario.y, j.armario.z) < 5.0)then
					
						Drawing.draw3DText(j.armario.x, j.armario.y, j.armario.z - 1.100,"Property Store", 4, 0.2, 0.1, 255, 255, 255, 215)
						Drawing.draw3DText(j.armario.x, j.armario.y, j.armario.z - 1.150,"^", 4, 0.4, 0.4, 255, 0, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.armario.x, j.armario.y, j.armario.z) < 1.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to interact")
						DrawSubtitleTimed(1000, 1)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('pk_casas:checkcasa',j.armario.nom)
							AbrirMenuArmario(j.armario.nom)
						end
					end
				end
				end
			end
		  end
		end
	Citizen.Wait(sleep)
	end
end)

----------------------------------------- ARMARIO ----------------------------------------------
RegisterNetEvent('pk_casas:freezePlayer1')
AddEventHandler('pk_casas:freezePlayer1', function(freeze)
	FreezeEntityPosition(GetPlayerPed(-1), 1, true, freeze)
	FreezeEntityPosition(GetPlayerPed(-1, false), freeze)
end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do 
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

RegisterNetEvent('pk_casas:abrircerrarpuerta')
AddEventHandler('pk_casas:abrircerrarpuerta', function(casanombre)
								if soyelpropietario == 1 then
									if estado == 1 then
										loadAnimDict("switch@trevor@stripclub")
										TaskPlayAnim(GetPlayerPed(-1), "switch@trevor@stripclub" ,"trev_leave_stripclub_idle" ,8.0, -8.0, -1, 0, 0, false, false, false )
										TriggerEvent('pk_casas:freezePlayer1', true)
										Citizen.Wait(1500)
										TriggerEvent('pk_casas:freezePlayer1', false)
										ClearPedTasks(ped1)
										TriggerServerEvent('pk_casas:puerta',0,casanombre)
										--Citizen.Wait(500)
										TriggerServerEvent('pk_casas:checkcasa',casanombre)
									elseif estado == 0 then
										loadAnimDict("switch@trevor@stripclub")
										TaskPlayAnim(GetPlayerPed(-1), "switch@trevor@stripclub" ,"trev_leave_stripclub_idle" ,8.0, -8.0, -1, 0, 0, false, false, false )
										TriggerEvent('pk_casas:freezePlayer1', true)
										Citizen.Wait(1500)
										TriggerEvent('pk_casas:freezePlayer1', false)
										ClearPedTasks(ped1)
										TriggerServerEvent('pk_casas:puerta',1,casanombre)
										--Citizen.Wait(500)
										TriggerServerEvent('pk_casas:checkcasa',casanombre)
									end
								end	
end)


function AbrirMenuArmario(propiedad)

 ESX.TriggerServerCallback('pk_casas:getInventoryV', function(inventory)
    local propiedad = propiedad
    local owner= GetPlayerPed(-1)
    local elements = {}
    table.insert(elements, {label = 'Deposit', type = 'deposer', value = 'deposer'})
	
	if mdinero == 1 then
		table.insert(elements, {label = 'Dirty money $' .. inventory.blackMoney, type = 'item_account', value = 'black_money'})
	end
	
	if mitems == 1 then
		for i=1, #inventory.items, 1 do
		local item = inventory.items[i]
		if item.count > 0 then
			table.insert(elements, {label = item.label .. ' x' .. item.count..'', type = 'item_standard', value = item.name})
		end

		end
	end

	if marmas == 1 then
		for i=1, #inventory.weapons, 1 do
		local weapon = inventory.weapons[i]
		table.insert(elements, {label = ESX.GetWeaponLabel(weapon.name) .. ' [' .. weapon.ammo .. ']', type = 'item_weapon', value = weapon.name, ammo = weapon.ammo})
		end
	end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'car_inventory',
      {
        title    = "Warehouse - "..propiedad ,
        align    = 'center',
        elements = elements,
      },
      function(data, menu)

        if data.current.type == 'item_weapon' then

          menu.close()

          TriggerServerEvent('pk_casas:getItem', propiedad, data.current.type, data.current.value, data.current.ammo)

          ESX.SetTimeout(500, function()
            ESX.UI.Menu.CloseAll()
            AbrirMenuArmario(propiedad)
          end)

        elseif data.current.type == "deposer" then
          ESX.UI.Menu.CloseAll()
          AbrirInventarioJugador(owner,propiedad)
        else

          ESX.UI.Menu.Open(
            'dialog', GetCurrentResourceName(), 'get_item_count',
            {
              title = 'Quantity',
            },
            function(data2, menu)

              local quantity = tonumber(data2.value)

              if quantity == nil or quantity < 1 then
                ESX.ShowNotification('Invalid Amount')
              else

                menu.close()

                TriggerServerEvent('pk_casas:getItem', propiedad, data.current.type, data.current.value, quantity)

                ESX.SetTimeout(500, function()
                  ESX.UI.Menu.CloseAll()
                  AbrirMenuArmario(propiedad)
                end)

              end

            end,
            function(data2,menu)
              menu.close()
            end
          )

        end

      end,
      function(data, menu)
        menu.close()
      end
    )

  end, propiedad)
end


function AbrirInventarioJugador(owner,propiedad)

  ESX.TriggerServerCallback('pk_casas:getPlayerInventory', function(inventory)

    local elements = {}
    table.insert(elements, {label = 'Remove', type = 'retour', value = 'retour'})
	
	if mdinero == 1 then
		table.insert(elements, {label = 'Dirty money $' .. inventory.blackMoney, type = 'item_account', value = 'black_money'})
	end

	if mitems == 1 then
		for i=1, #inventory.items, 1 do

		local item = inventory.items[i]

		if item.count > 0 then
			table.insert(elements, {label = item.label .. ' x' .. item.count..'', type = 'item_standard', value = item.name})
		end

		end
	end

    local playerPed  = GetPlayerPed(-1)
    local weaponList = ESX.GetWeaponList()

	if marmas == 1 then
		for i=1, #weaponList, 1 do

		local weaponHash = GetHashKey(weaponList[i].name)

		if HasPedGotWeapon(playerPed,  weaponHash,  false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
			local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
			table.insert(elements, {label = weaponList[i].label .. ' [' .. ammo .. ']', type = 'item_weapon', value = weaponList[i].name, ammo = ammo})
		end

		end
	end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'player_inventory',
      {
        title    = "Warehouse - "..propiedad ,
        align    = 'center',
        elements = elements
      },
      function(data, menu)

        if data.current.type == 'item_weapon' then

          menu.close()

          TriggerServerEvent('pk_casas:putItem', propiedad, data.current.type, data.current.value, data.current.ammo)
	
          ESX.SetTimeout(300, function()
            ESX.UI.Menu.CloseAll()
            AbrirInventarioJugador(playerPed,propiedad)
          end)
        elseif data.current.type == 'retour' then
          ESX.UI.Menu.CloseAll()
          AbrirMenuArmario(propiedad)
        else

          ESX.UI.Menu.Open(
            'dialog', GetCurrentResourceName(), 'put_item_count',
            {
              title = 'Quantity',
            },
            function(data2, menu)
              local quantity = tonumber(data2.value)

              if quantity == nil or quantity < 1 then
                ESX.ShowNotification('Invalid Amount')
              else
                menu.close()

                TriggerServerEvent('pk_casas:putItem', propiedad, data.current.type, data.current.value, tonumber(data2.value))

                ESX.SetTimeout(300, function()
                  ESX.UI.Menu.CloseAll()
                  AbrirInventarioJugador(playerPed,propiedad)

                end)
              end
            end,
            function(data2,menu)
              menu.close()
            end
          )

        end

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end


--------------------------------------------- ADMINISTRAR --------------------------------------------------------------------


function AbrirMenuMejoras(casanombre,preciogarage,precioarmas,preciodinero,precioitems)
	
	local elements = {}
	if mgarage > 0 and preciogarage > 0 then
		table.insert(elements, {label = 'Garage upgrade: ACQUIRED', value = 'no'})
	elseif mgarage == 0 and  preciogarage > 0 then
		table.insert(elements, {label = 'Build garage for $'..preciogarage, value = 'mejorasgarage'})
	elseif preciogarage == 0 then
		table.insert(elements, {label = 'Mejora de garage: NO DISPONIBLE', value = 'no'})
	end
	
	if marmas == 0 and precioarmas > 0 then
		table.insert(elements, {label = 'Build warehouse for weapons $'..precioarmas, value = 'mejorasarmas'})
	elseif marmas > 0 and precioarmas > 0 then 
		table.insert(elements, {label = 'Weapon storage upgrade: ACQUIRED', value = 'no'})
	elseif precioarmas == 0 then 
		table.insert(elements, {label = 'Weapon storage upgrade: NOT AVAILABLE', value = 'no'})
	end
	
	if mdinero == 0 and preciodinero > 0 then
		table.insert(elements, {label = 'Build warehouse for money $'..preciodinero, value = 'mejorasdinero'})
	elseif mdinero > 0 and preciodinero > 0 then 
		table.insert(elements, {label = 'Money storage improvement: ACQUIRED', value = 'no'})
	elseif preciodinero == 0 then
		table.insert(elements, {label = 'Money storage improvement: NOT AVAILABLE', value = 'no'})
	end
	
	if mitems == 0 and precioitems > 0 then
		table.insert(elements, {label = 'Build warehouse for items $'..precioitems, value = 'mejorasitems'})
	elseif mitems > 0 and precioitems > 0 then 
		table.insert(elements, {label = 'Improved storage of items: ACQUIRED', value = 'no'})
	elseif precioitems == 0 then
		table.insert(elements, {label = 'Improved storage of items: NOT AVAILABLE', value = 'no'})
	end

	if mventa == 0 then 
		table.insert(elements, { label = "Put on sale" ,value = "ponerenventa" })
		table.insert(elements, { label = "Cancel" ,value = "no" })
	elseif mventa > 0 then
		table.insert(elements, { label = "Remove from for sale" ,value = "sacarventa" })
		table.insert(elements, { label = "Change value" ,value = "cambiarvalor" })
		table.insert(elements, { label = "Cancel" ,value = "no" })
	end
	
		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'menu_empresa',
			{
			title  = "Property Improvements" ,
			align = "top",
			elements = elements
			
			},
	function(data, menu)
		if data.current.value == "mejorasarmas" then
			if precioarmas > 0 then
			if marmas == 0 then
				TriggerServerEvent('pk_casas:checkdinero',casanombre,'armas',precioarmas)
			elseif marmas > 0 then 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You already have this improvement acquired.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			else 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>This upgrade is not available on this property..</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "mejorasdinero" then 
			if preciodinero > 0 then
			if mdinero == 0 then
				TriggerServerEvent('pk_casas:checkdinero',casanombre,'dinero',preciodinero)
			elseif mdinero > 0 then 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You already have this improvement acquired.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			else 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>This improvement is not available on this property.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "mejorasitems" then 
			if precioitems > 0 then
			if mitems == 0 then
				TriggerServerEvent('pk_casas:checkdinero',casanombre,'items',precioitems)
			elseif mitems > 0 then 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You already have this improvement acquired.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			else 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>This improvement is not available on this property.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "mejorasgarage" then 
			if preciogarage > 0 then
			if mgarage == 0 then
				TriggerServerEvent('pk_casas:checkdinero',casanombre,'garage',preciogarage)
			elseif mgarage > 0 then 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You already have this improvement acquired.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			else 
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>This upgrade is not available on this property.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "ponerenventa" then 
			ESX.UI.Menu.Open(
                                    'dialog', GetCurrentResourceName(), 'steal_inventory_item',
                                    {
                                      title ='Put the price at which you want to sell your house in £'
                                    },
			function(data2, menu2)
               local amount = tonumber(data2.value)
			  TriggerServerEvent('pk_casas:ponerenventa',casanombre, amount)
                                    
              menu2.close()
              menu.close()
                                    
			end,
			function(data2, menu2)
               menu2.close()
			end
			)
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "sacarventa" then 
			TriggerServerEvent('pk_casas:sacarenventa',casanombre, 0)
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "cambiarvalor" then 
			ESX.UI.Menu.Open(
                                    'dialog', GetCurrentResourceName(), 'steal_inventory_item',
                                    {
                                      title ='Update the price at which you want to sell your house in £'
                                    },
			function(data2, menu2)
               local amount = tonumber(data2.value)
			  TriggerServerEvent('pk_casas:ponerenventa',casanombre, amount)
                                    
              menu2.close()
              menu.close()
                                    
			end,
			function(data2, menu2)
               menu2.close()
			end
			)
			menu.close()
		else
			menu.close()
		end
	end,
		function(data, menu)
			menu.close()
		end
		)

end

function AbrirMenuNoPropietario(casanombre,precio, cordx, cordy, cordz, entrarosalir)
	local x = cordx
	local y = cordy
	local z = cordz
	local pos = GetEntityCoords(GetPlayerPed(-1), true)
	local elements = {
		{label = "Buy property" ,value = "comprar"},
		{label = entrarosalir ,value = "visitar"},
		{label = "Cancel" ,value = "no"}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'menu_empresa',
			{
			title  = "Property Gate "..casanombre ,
			elements = elements,
			align = "top"
			},
	function(data, menu)
		if data.current.value == "comprar" then 
			TriggerServerEvent('pk_casas:comprarpropiedad', casanombre, precio)
			TriggerServerEvent('pk_casas:checkcasa',casanombre)
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "visitar" then 
			for k, j in pairs(TeleportFromTo) do
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0)then
				DoScreenFadeOut(1000)
				Citizen.Wait(2000)
				SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
				DoScreenFadeIn(1000)
			elseif(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0)then
				DoScreenFadeOut(1000)
				Citizen.Wait(2000)
				SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
				DoScreenFadeIn(1000)
			end
			end
			menu.close()
		else
			menu.close()
		end
	end,
		function(data, menu)
			menu.close()
		end
		)

end

function AbrirMenuSoyElPropietario(nombrepropietario,casanombre,precio, x, y, z,entrarosalir)
local pos = GetEntityCoords(GetPlayerPed(-1), true)
	local elements = {}
		
		table.insert(elements, { label = entrarosalir.." to the house" ,value = "entrar"})
		--table.insert(elements, { label = "Abrir con llave" ,value = "abrir" })
		--table.insert(elements, { label = "Cerrar con llave" ,value = "cerrar" })
		table.insert(elements, { label = "Cancel" ,value = "no" })

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'menu_empresa',
			{
			title  = "Property Gate "..casanombre.." from "..nombrepropietario,
			elements = elements,
			align = "top"
			},
	function(data, menu)
		if data.current.value == "entrar" then 
			TriggerServerEvent('pk_casas:checkcasa',casanombre)
			Citizen.Wait(10)
			if estado == 1 then
				for k, j in pairs(TeleportFromTo) do
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0)then
						DoScreenFadeOut(1000)
						Citizen.Wait(2000)
						SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
						DoScreenFadeIn(1000)
					elseif(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0)then
						DoScreenFadeOut(1000)
						Citizen.Wait(2000)
						SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
						DoScreenFadeIn(1000)
					end
				end
			elseif estado == 0 then
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>The house is closed.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "abrir" then 
			TriggerServerEvent('pk_casas:checkcasa',casanombre)
			Citizen.Wait(10)
			if estado == 1 then
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>The house is already open.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			elseif estado == 0 then
				TriggerServerEvent('pk_casas:puerta',1,casanombre)
				Citizen.Wait(500)
				TriggerServerEvent('pk_casas:checkcasa',casanombre)
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "cerrar" then 
			TriggerServerEvent('pk_casas:checkcasa',casanombre)
			Citizen.Wait(10)
			if estado == 1 then
				TriggerServerEvent('pk_casas:puerta',0,casanombre)
				Citizen.Wait(500)
				TriggerServerEvent('pk_casas:checkcasa',casanombre)
			elseif estado == 0 then
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>The house is already closed.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
	end,
		function(data, menu)
			menu.close()
		end
		)

end

function AbrirMenuConPropietario(nombrepropietario,casanombre,precio, x, y, z,entrarosalir)
local pos = GetEntityCoords(GetPlayerPed(-1), true)
	local elements = {}
	if mventa > 0 then 
		table.insert(elements, {label = entrarosalir.." the house" ,value = "entrar"})
		table.insert(elements, { label = "Buy property" ,value = "comprarcasa" })
		table.insert(elements, { label = "Cancel" ,value = "no" })
	elseif mventa == 0 then
		table.insert(elements, {label = entrarosalir.." the house" ,value = "entrar"})
		table.insert(elements, { label = "Cancel" ,value = "no" })
	end

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'menu_empresa',
			{
			title  = "Property Gate "..casanombre.." from "..nombrepropietario,
			elements = elements,
			align = "top"
			},
	function(data, menu)
		if data.current.value == "entrar" then 
			TriggerServerEvent('pk_casas:checkcasa',casanombre)
			Citizen.Wait(10)
			if estado == 1 then
				for k, j in pairs(TeleportFromTo) do
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0)then
						DoScreenFadeOut(1000)
						Citizen.Wait(2000)
						SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
						DoScreenFadeIn(1000)
					elseif(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0)then
						DoScreenFadeOut(1000)
						Citizen.Wait(2000)
						SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
						DoScreenFadeIn(1000)
					end
				end
			elseif estado == 0 then
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>The house is closed.</b>",
					type = "succes",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			menu.close()
		else
			menu.close()
		end
		if data.current.value == "comprarcasa" then 
			TriggerServerEvent('pk_casas:comprarcasaenventa',casanombre)
			menu.close()
		else
			menu.close()
		end
	end,
		function(data, menu)
			menu.close()
		end
		)

end



---------------------------------------- GARAGE -------------------------------------------------
Citizen.CreateThread(function()				
	while true do
		local sleep = 500
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k, j in pairs(TeleportFromTo) do

		------------------ guardar vehiculo --------------------------
		if soyelpropietario == 1 then
		if mgarage == 1 then
			if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 6.0)then
				sleep = 5
				DrawMarker(1, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 6.0)then
				Drawing.draw3DText(j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z - 1.100, "Store vehicle", 4, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to save")--
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('pk_casas:checkcasa',j.GuardarVehiculo.nom)
							if soyelpropietario == 1 then
							MenuGuardarVehiculo(j.GuardarVehiculo.nom)
							end
						end
					end
				end
			end
		end
		if mgarage == 2 then
			if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 6.0)then
				sleep = 5
			if IsInVehicle() then
				if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 6.0)then
				Drawing.draw3DText(j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z - 1.100, "Remove Vehicle", 4, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.GuardarVehiculo.x, j.GuardarVehiculo.y, j.GuardarVehiculo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to remove")--
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							TriggerServerEvent('pk_casas:checkcasa',j.GuardarVehiculo.nom)
							if soyelpropietario == 1 then
							SacarVehiculo(j.GuardarVehiculo.nom)
							end
						end
					end
				end
			end
			end
		end
		end
		end
		Citizen.Wait(sleep)
	end
end)

function IsInVehicle()
  local ply = GetPlayerPed(-1)
  if IsPedSittingInAnyVehicle(ply) then
    return true
  else
    return false
  end
end

function ranger(vehicle,vehicleProps)
	ESX.Game.DeleteVehicle(vehicle)
	TriggerServerEvent('eden_garage:modifystatecasa', vehicleProps, 1)
	ESX.ShowNotification('Garage notification: The vehicle has been saved')
end

-- Function that allows player to enter a vehicle
function MenuGuardarVehiculo(propiedad)
	local playerPed  = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed,  false) then

		local playerPed = GetPlayerPed(-1)
    	local coords    = GetEntityCoords(playerPed)
    	local vehicle =GetVehiclePedIsIn(playerPed,false)     
		local vehicleProps  = ESX.Game.GetVehicleProperties(vehicle)
		local current 	    = GetPlayersLastVehicle(GetPlayerPed(-1), true)
		local engineHealth  = GetVehicleEngineHealth(current)

		ESX.TriggerServerCallback('pk_garage:stockv',function(valid)

			if (valid) then			      
			        reparation(vehicle,vehicleProps,propiedad)
			else
					ESX.ShowNotification('Garage notification: This vehicle does not belong to you')
			end
		end,vehicleProps)
	else		
		ESX.ShowNotification('Garage notification: Your vehicle must be on the marker')
	end

end

function reparation(vehicle,vehicleProps,propiedad)
	
	ESX.UI.Menu.CloseAll()

	local elements = {
		{label = "Save vehicle", value = 'yes'},
		{label = "Do not save", value = 'no'},
	}
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'delete_menu',
		{
			title    = 'Vehicle',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)

			menu.close()
			if(data.current.value == 'yes') then
				TriggerServerEvent('pk_garage:guardarvehiculo', vehicleProps, propiedad)
				TriggerServerEvent('pk_casas:checkcasa',propiedad)
				ranger(vehicle,vehicleProps)
				Citizen.Wait(1000)
				TriggerServerEvent('pk_garage:mostrarvehiculos',propiedad)
			end
			if(data.current.value == 'no') then
				--ESX.ShowNotification('Sera mejor que consigas un mecanico')
			end

		end,
		function(data, menu)
			menu.close()
			
		end
	)	
end

function SacarVehiculo(propiedad)
				ESX.TriggerServerCallback('pk_garage:obtenergarage', function(garage)
				for _,v in pairs(garage) do
				
					local hashVehicule = v.vehicle.model
					local vehicle = v.vehicle
					local vehicleName = GetDisplayNameFromVehicleModel(hashVehicule)
					local vehiculoactual = GetVehiclePedIsIn(GetPlayerPed(-1))
					SetEntityInvincible(vehiculoactual, false)
					SetEntityProofs(vehiculoactual, false, false, false, false, false, false, 0, false)
            		SetVehicleTyresCanBurst(vehiculoactual, true)
            		SetVehicleCanBreak(vehiculoactual, true)
            		SetVehicleCanBeVisiblyDamaged(vehiculoactual, true)
            		SetEntityCanBeDamaged(vehiculoactual, true)
            		SetVehicleExplodesOnHighExplosionDamage(vehiculoactual, true)			
					FreezeEntityPosition(vehiculoactual, false)
					TriggerServerEvent('pk_garage:sacarvehiculo',propiedad, vehicle)
					TriggerServerEvent('eden_garage:modifystatecasa', vehicleProps, 0)
					Citizen.Wait(500)
					Citizen.Wait(100)
					TriggerServerEvent('pk_casas:checkcasa',propiedad)
				end
				end,propiedad)
end

function SpawnVehicle1(hashVehicule,vehicle,cordx,cordy,cordz,cordh)
				
				ESX.Game.SpawnVehicle(hashVehicule, {
							x = cordx ,
							y = cordy,
							z = cordz + 1									
							},cordh, function(callback_vehicle)
					ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
					--TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
					SetVehRadioStation(callback_vehicle, "OFF")
					exports["esx_legacyfuel"]:SetFuel(vehicle, 100)
					TriggerServerEvent('llaves:addarrayllaves',GetVehicleNumberPlateText(callback_vehicle),vehicle)
					end)
				TriggerServerEvent('eden_garage:modifystate', vehicle, false)
end

RegisterNetEvent('pk_garage:spawnautos')
AddEventHandler('pk_garage:spawnautos', function(vehiculo, propiedades, corx, cory, corz, corh)

                            -- Load
							local cordx = corx
							local cordy = cory
							local cordz = corz
							local cordh = corh
							
                            -- Create
							ESX.Game.SpawnVehicle(vehiculo, {
							x = cordx ,
							y = cordy,
							z = cordz									
							},cordh, function(callback_vehicle)
							ESX.Game.SetVehicleProperties(callback_vehicle, propiedades)
							SetEntityInvincible(callback_vehicle, true)
            				SetEntityProofs(callback_vehicle, true, true, true, true, true, true, 1, true)
            				SetVehicleTyresCanBurst(callback_vehicle, false)
            				SetVehicleCanBreak(callback_vehicle, false)
            				SetVehicleCanBeVisiblyDamaged(callback_vehicle, false)
            				SetEntityCanBeDamaged(callback_vehicle, false)
            				SetVehicleExplodesOnHighExplosionDamage(callback_vehicle, false)			
							FreezeEntityPosition(callback_vehicle, true)
                            SetEntityAsMissionEntity(callback_vehicle)
							end)

                            
end)

-------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing

function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end
