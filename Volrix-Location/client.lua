ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end 
end)


RMenu.Add('menu location', 'main', RageUI.CreateMenu("~r~Menu Location", "Created By Volrix#1317"))
RMenu.Add('menu location', '', RageUI.CreateSubMenu(RMenu:Get('menu location', 'main'), "", ""))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('menu location', 'main'), true, true, true, function()
            RageUI.Separator("â†“         ~r~Location de vÃ©hicules         ~s~â†“")
            RageUI.ButtonWithStyle("Louer une Smart",'', {RightLabel = "~r~â†’â†’â†’"}, true,function(h,a,s)
                if s then                                                   
                    RageUI.CloseAll()
                    TriggerServerEvent('Location:fortwo17')
                    local model = GetHashKey("fortwo17")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, -509.01, -260.99, 34.86, 111.75, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.ButtonWithStyle("Louer un Scooter",'', {RightLabel = "~r~â†’â†’â†’"}, true,function(h,a,s)
                if s then                                                   
                    RageUI.CloseAll()
                    TriggerServerEvent('Location:faggio')
                    local model = GetHashKey("faggio")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, -509.01, -260.99, 34.86, 111.75, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)
            

            RageUI.ButtonWithStyle("Louer une Clio 5",'', {RightLabel = "~r~â†’â†’â†’"}, true,function(h,a,s)
                if s then                                                   
                    RageUI.CloseAll()
                    TriggerServerEvent('Location:ren_clio_5')
                    local model = GetHashKey("ren_clio_5")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, -509.01, -260.99, 34.86, 111.75, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Separator("â†“         ~r~Fermeture du menu         ~s~â†“")
            RageUI.ButtonWithStyle("~r~Fermer",'', {RightLabel = "~r~â†’â†’â†’"}, true,function(h,a,s)
                if s then                                                   
                    RageUI.CloseAll()
                end
            end)

            
        end, function()
        end, 1)

            Citizen.Wait(0)
        end
    end)


local position = {
    {x = -511.42 , y = -258.51, z = 35.60, }
}


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
                wait = 2
                DrawMarker(22, -511.42, -258.51, 35.60, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0, 255, true, true, p19, true)   
            end

            if dist <= 1.0 then

                RageUI.Text({
                    message = "Appuyer sur ~r~[E]~w~ pour accÃ©der a la ~r~Location de Voiture",
                    time_display = 1
                })
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('menu location', 'main'), not RageUI.Visible(RMenu:Get('Menu Location', 'main')))
                end
            end
        end
    end
end)