# Volrix-Location
Ceci est un des meilleurs menu location RageUI que j'ai pue faire .
Si vous voulez que sa retire l'argent sur votre compte in-game 
veuillez rajouter ses ligne de codes dans votre server.lua ; 

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterNetEvent('nom_de_ton_trigger:vehicule')
AddEventHandler('nom_de_ton_trigger:vehicule', function(prix)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerMoney = xPlayer.getMoney()
    xPlayer.removeMoney(prix) 
    TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre véhicule ~s~! ")
end)

Merci a vous tous .


