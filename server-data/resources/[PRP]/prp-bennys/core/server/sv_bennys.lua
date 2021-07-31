local hmm = vehicleBaseRepairCost

RegisterServerEvent('prp-bennys:attemptPurchase')
AddEventHandler('prp-bennys:attemptPurchase', function(cheap, type, upgradeLevel)
	local src = source
	local user = exports["prp-core"]:getModule("Player"):GetUser(src)
    if type == "repair" then
        if user:getCash() >= hmm then
            user:removeMoney(hmm)
            TriggerClientEvent('prp-bennys:purchaseSuccessful', source)
        else
            TriggerClientEvent('prp-bennys:purchaseFailed', source)
        end
    elseif type == "performance" then
        if user:getCash() >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('prp-bennys:purchaseSuccessful', source)
            user:removeMoney(vehicleCustomisationPrices[type].prices[upgradeLevel])
        else
            TriggerClientEvent('prp-bennys:purchaseFailed', source)
        end
    else
        if user:getCash() >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('prp-bennys:purchaseSuccessful', source)
            user:removeMoney(vehicleCustomisationPrices[type].price)
        else
            TriggerClientEvent('prp-bennys:purchaseFailed', source)
        end
    end
end)

RegisterServerEvent('prp-bennys:updateRepairCost')
AddEventHandler('prp-bennys:updateRepairCost', function(cost)
    hmm = cost
end)

RegisterServerEvent('prp-bennys:repairciv')
AddEventHandler('prp-bennys:repairciv', function(amount)
    local pSrc = source
    local user = exports["prp-core"]:getModule("Player"):GetUser(pSrc)
    if (user:getCash() >= amount) then
        user:removeMoney(amount)
        TriggerClientEvent("bennys:civ:repair:cl", pSrc)
    end
end)