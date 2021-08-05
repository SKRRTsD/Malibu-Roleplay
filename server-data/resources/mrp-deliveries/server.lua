RegisterServerEvent('mrp-delivery:payout')
AddEventHandler('mrp-delivery:payout', function(money)
    TriggerEvent("player:receiveItem", "band", math.random(1, 5))
else
    TriggerEvent("player:receiveItem", "rollcash", math.random(1, 8))
end)