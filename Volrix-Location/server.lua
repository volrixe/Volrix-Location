TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Car Location

RegisterNetEvent('getSharedObject:fortwo17')
AddEventHandler('getSharedObject:fortwo17', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
	xPlayer.removeMoney(250) -- Ici pour changer le prix !
	TriggerClientEvent('esx:showNotification', source, "~g~Véhicule de location sortie .")

end)