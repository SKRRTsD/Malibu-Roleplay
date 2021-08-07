RegisterNetEvent('paleto:loot')
AddEventHandler('paleto:loot', function()
    TriggerEvent("player:receiveItem", "Bankbox", 1 )
end)