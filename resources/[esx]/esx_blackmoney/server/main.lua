ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_blackmoney:washMoney')
AddEventHandler('esx_blackmoney:washMoney', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local accountMoney = 0
	
	accountMoney = xPlayer.getAccount('black_money').money

	if accountMoney < 99 then
		notification('No tienes suficiente ~r~dinero sucio~ para lavar.')
	else
		xPlayer.removeAccountMoney('black_money', 2500)
		xPlayer.addMoney(2500)
		notification('Has ~g~lavado~s~ 10000 ~r~dinero sucio.')
	end
end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end