local hmm = vehicleBaseRepairCost

RegisterServerEvent('mrp-bennys:attemptPurchase')
AddEventHandler('mrp-bennys:attemptPurchase', function(cheap, type, upgradeLevel)
	local src = source
	local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    if type == "repair" then
        if user:getCash() >= hmm then
            user:removeMoney(hmm)
            TriggerClientEvent('mrp-bennys:purchaseSuccessful', source)
        else
            TriggerClientEvent('mrp-bennys:purchaseFailed', source)
        end
    elseif type == "performance" then
        if user:getCash() >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('mrp-bennys:purchaseSuccessful', source)
            user:removeMoney(vehicleCustomisationPrices[type].prices[upgradeLevel])
        else
            TriggerClientEvent('mrp-bennys:purchaseFailed', source)
        end
    else
        if user:getCash() >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('mrp-bennys:purchaseSuccessful', source)
            user:removeMoney(vehicleCustomisationPrices[type].price)
        else
            TriggerClientEvent('mrp-bennys:purchaseFailed', source)
        end
    end
end)

RegisterServerEvent('mrp-bennys:updateRepairCost')
AddEventHandler('mrp-bennys:updateRepairCost', function(cost)
    hmm = cost
end)

RegisterServerEvent('mrp-bennys:repairciv')
AddEventHandler('mrp-bennys:repairciv', function(amount)
    local pSrc = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(pSrc)
    if (user:getCash() >= amount) then
        user:removeMoney(amount)
        TriggerClientEvent("bennys:civ:repair:cl", pSrc)
    end
end)