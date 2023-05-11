local ESX = nil

Citizen.CreateThread(function() 
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
        Citizen.Wait(0) 
    end 
end)

RegisterCommand('spawnvehicle', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
	local spawnRandomVehicle = math.random(1, 3)

    if spawnRandomVehicle == 1 then
        ESX.Game.SpawnVehicle('blista', playerCoords, 100.0, function(vehicle)
            TaskWarpPedIntoVehicle(ESX.PlayerData.ped, vehicle, -1)
            SetVehicleNumberPlateText(vehicle, 'BLISTA')
            ESX.ShowNotification('Je hebt succesvol je voertuig gespawned!')
            return
        end)

        elseif spawnRandomVehicle == 2 then
            ESX.Game.SpawnVehicle('bati', playerCoords, 100.0, function(vehicle)
                TaskWarpPedIntoVehicle(ESX.PlayerData.ped, vehicle, -1)
                SetVehicleNumberPlateText(vehicle, 'BATI')
                ESX.ShowNotification('Je hebt succesvol je voertuig gespawned!')
                return
            end)

        elseif spawnRandomVehicle == 3 then
            ESX.Game.SpawnVehicle('adder', playerCoords, 100.0, function(vehicle)
                TaskWarpPedIntoVehicle(ESX.PlayerData.ped, vehicle, -1)            
                SetVehicleNumberPlateText(vehicle, 'ADDER')
                ESX.ShowNotification('Je hebt succesvol je voertuig gespawned!')
                return
            end)
        end
end)