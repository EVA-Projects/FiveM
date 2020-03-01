-- E N G I N E --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/motor off" then
		CancelEvent()
		--------------
		TriggerClientEvent('motoroff', s)
	elseif message == "/motor on" then
		CancelEvent()
		--------------
		TriggerClientEvent('motoron', s)
	elseif message == "/motor" then
		CancelEvent()
		--------------
		TriggerClientEvent('motor', s)
	end
end)
-- T R U N K --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/maletero" then
		CancelEvent()
		--------------
		TriggerClientEvent('maletero', s)
	end
end)
-- R E A R  D O O R S --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/rdoors" then
		CancelEvent()
		--------------
		TriggerClientEvent('rdoors', s)
	end
end)
-- H O O D --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/capo" then
		CancelEvent()
		--------------
		TriggerClientEvent('capo', s)
	end
end)