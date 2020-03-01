-- No toques nada, todo esta bien configurado.
ESX = nil

local NumberCharset = {}
local Charset = {}

local RegisteredPlateTable = {}
local currentExecuting = 0

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end

for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('vendercoche', function(source, args, rawCommand)
	vendercoches()
end, true)

function vendercoches()
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles', {}, function(result)
		for i=1, #result, 1 do
			Citizen.Wait(0)

			local vehicleID = result[i].id
			local vehicleProps = json.decode(result[i].vehicle)
			local oldPlate = vehicleProps.plate

			vehicleProps.plate = GeneratePlate() 

			vendercoche(vehicleProps, oldPlate, vehicleID)
		end

		print('\n\n\n')
		print('ENIOR-VENDERCHOCHE HA SIDO INICIADO CORRECTAMENTE.!')
		print('\n\n\n')
	end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)
		if currentExecuting > (Config.VenderMaximo / 2) then
			currentExecuting = currentExecuting - 1
		end
	end
end)

function vendercoche(vehicleProps, oldPlate, vehicleID)
	while currentExecuting > Config.VenderMaximo do
		Citizen.Wait(2)
	end

	io.write('Migrando un vehiculo')
	currentExecuting = currentExecuting + 1

	MySQL.Async.execute('UPDATE `owned_vehicles` SET `vehicle` = @vehicleNew, `plate` = @plateNew WHERE `id` = @vehicleID', {
		['@vehicleNew'] = json.encode(vehicleProps),
		['@plateNew'] = vehicleProps.plate,
		['@vehicleID'] = vehicleID
	}, function(rowsChanged)
		io.write(('OK! (%s > %s)\n'):format(oldPlate, vehicleProps.plate))
		currentExecuting = currentExecuting - 1
	end)

end

-- Este script es para que genere un random
function GeneratePlate()
	local generatedPlate

	while true do
		if Config.MatriculaUsaEspacios then
			generatedPlate = string.upper(GetRandomLetter(Config.LetrasMatricula) .. ' ' .. GetRandomNumber(Config.NumerosMatricula))
		else
			generatedPlate = string.upper(GetRandomLetter(Config.LetrasMatricula) .. GetRandomNumber(Config.NumerosMatricula))
		end

		if IsPlateTaken(generatedPlate) then
			Citizen.Wait(2) -- No quites eso si no quieres que crashee xd
		else
			break
		end
	end

	RegisteredPlateTable[generatedPlate] = true

	return generatedPlate
end

function IsPlateTaken(plate)
	return RegisteredPlateTable[plate]
end

function GetRandomNumber(length)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomLetter(length)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end