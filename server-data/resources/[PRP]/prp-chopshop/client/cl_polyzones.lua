NearChopShop, AtChopSell = false, false

exports["prp-polyzone"]:AddBoxZone("start_chop_shop", vector3(-553.62951660156, -1699.6024169922, 19.134532928467), 10, 10, {
    name="start_chop_shop",
    heading=340,
    minZ=16.83,
    maxZ=20.83
})
exports["prp-polyzone"]:AddBoxZone("sell_chop_shop", vector3(-556.34368896484, -1688.9959716797, 19.310935974121), 2, 2, {
    name="sell_chop_shop",
    heading=340,
    minZ=16.18,
    maxZ=20.18
})

RegisterNetEvent('prp-polyzone:enter')
AddEventHandler('prp-polyzone:enter', function(name)
    if name == "start_chop_shop" then
        NearChopShop = true
        StartChop()
        TriggerEvent('prp-textui:ShowUI', 'show', ("[E] %s"):format("Start Chopping"))
    elseif name == "sell_chop_shop" then
        AtChopSell = true
        SellChopParts()
        TriggerEvent('prp-textui:ShowUI', 'show', ("[E] %s"):format("Sell Car Parts"))
    end
end)

RegisterNetEvent('prp-polyzone:exit')
AddEventHandler('prp-polyzone:exit', function(name)
    if name == "start_chop_shop" then
        NearChopShop = false
    elseif name == "sell_chop_shop" then
        AtChopSell = false
    end
    TriggerEvent('prp-textui:HideUI')
end)

function StartChop()
    Citizen.CreateThread(function(data)
        while NearChopShop do
            Citizen.Wait(5)
            if IsControlJustReleased(0,38)  then
                TriggerEvent("prp-chopshop:menu")
            end
        end
    end)
end

function SellChopParts()
    Citizen.CreateThread(function()
        while AtChopSell do
            Citizen.Wait(5)
            if IsControlJustReleased(0,38) and hasbox == true then
                TriggerServerEvent("prp-chopshop:serverPay")
                DropBox()
                hasbox = false
            end
        end
    end)
end
