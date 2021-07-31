

RegisterServerEvent('erp:infinity:player:ready')
AddEventHandler('erp:infinity:player:ready', function()
    local ting = GetEntityCoords(GetPlayerPed(source))
    
    TriggerClientEvent('erp:infinity:player:coords', -1, ting)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(30000)
        local ting = GetEntityCoords(source)

        TriggerClientEvent('erp:infinity:player:coords', -1, ting)
        TriggerEvent("prp-core:updatecoords", ting.x, ting.y, ting.z)
       -- print("[^2prp-infinity^0]^3 Sync Successful.^0")
    end
end)