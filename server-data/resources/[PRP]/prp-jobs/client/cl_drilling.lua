drillingstart = false

Citizen.CreateThread(function()
	exports["prp-polyzone"]:AddBoxZone("quarry_drill1", vector3(2938.28, 2814.25, 43.98),42.2, 11.0, {
		name="quarry_drill1",
		heading=110,
        minZ=41.38,
        maxZ=45.38
	})	  
end)

RegisterNetEvent('prp-polyzone:enter')
AddEventHandler('prp-polyzone:enter', function(name)
    if name == "quarry_drill1"  then
        drillingstart = true
        PlutoRPstartdrillingyo()
		TriggerEvent('prp-textui:ShowUI', 'show', ("[E] %s"):format(" Start Drilling")) 
    end
end)

RegisterNetEvent('prp-polyzone:exit')
AddEventHandler('prp-polyzone:exit', function(name)
    if name == "quarry_drill1"  then
        drillingstart = false
    end
    TriggerEvent('prp-ui:HideUI')
end)

function PlutoRPstartdrillingyo()
    Citizen.CreateThread(function()
        while drillingstart do
            Citizen.Wait(5)
            if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then
                TriggerEvent('DoLongHudText', 'wait 20 seconds', 1 )
                FreezeEntityPosition(GetPlayerPed(-1),true)
                ExecuteCommand("e drill")
                Citizen.Wait(20000) -- 20 secs
                ExecuteCommand("e c")
                if math.random(3) == 2 then
                    TriggerEvent("drilling:loot")	
                    ExecuteCommand("e c")
                    FreezeEntityPosition(GetPlayerPed(-1),false)
                else
                    TriggerEvent('DoLongHudText', 'You didnt find anything', 1 )
                    FreezeEntityPosition(GetPlayerPed(-1),false)
                end
            end
        end
    end)
end

RegisterNetEvent("drilling:loot")
AddEventHandler("drilling:loot", function()
 local roll = math.random(4)
 if roll == 1 then
     TriggerEvent("player:receiveItem", "goldore", math.random(1, 5))
 elseif roll == 2 then
     TriggerEvent("player:receiveItem", "uncutruby", math.random(1, 5))
 elseif roll == 3 then
     TriggerEvent("player:receiveItem", "uncutsapphire", math.random(1, 3))
 elseif roll == 4 then
    TriggerEvent("player:receiveItem", "silverore", math.random(1, 2))
 end
end)

RegisterNetEvent('sellgoldenore')
AddEventHandler('sellgoldenore', function()
    if exports["prp-inventory"]:hasEnoughOfItem("goldore",1,false) then
        local finished = exports["prp-taskbar"]:taskBar(10000,"Selling Gold Ore!")
        if finished == 100 then
            TriggerEvent('inventory:removeItem', 'goldore', 1)
            TriggerServerEvent( 'sk1c2:payout', math.random(90,190))
            TriggerEvent('DoLongHudText', 'You successfully sold a Golden Ore.', 1)
        else
            TriggerEvent('DoLongHudText', 'Cancelled', 2)
        end

    else
        TriggerEvent('DoLongHudText', 'You dont have a Gold Ore to sell', 2)
    end
end)

RegisterNetEvent('sellgoldenore')
AddEventHandler('sellgoldenore', function()
    if exports["prp-inventory"]:hasEnoughOfItem("goldore",1,false) then
        local finished = exports["prp-taskbar"]:taskBar(10000,"Selling goldore!")
        if finished == 100 then
            TriggerEvent('inventory:removeItem', 'goldore', 1)
            TriggerServerEvent( 'sk1c2:payout', math.random(90,190))
            TriggerEvent('DoLongHudText', 'You successfully sold a goldore.', 1)
        else
            TriggerEvent('DoLongHudText', 'Cancelled', 2)
        end

    else
        TriggerEvent('DoLongHudText', 'You dont have a goldore to sell', 2)
    end
end)

RegisterNetEvent('selluncutsapphire')
AddEventHandler('selluncutsapphire', function()
    if exports["prp-inventory"]:hasEnoughOfItem("uncutsapphire",1,false) then
        local finished = exports["prp-taskbar"]:taskBar(10000,"Selling Uncut Sapphire!")
        if finished == 100 then
            TriggerEvent('inventory:removeItem', 'uncutsapphire', 1)
            TriggerServerEvent( 'sk1c2:payout', math.random(90,310))
            TriggerEvent('DoLongHudText', 'You successfully sold a Uncut Ruby.', 1)
        else
            TriggerEvent('DoLongHudText', 'Cancelled', 2)
        end

    else
        TriggerEvent('DoLongHudText', 'You dont have a Uncut Sapphire to sell', 2)
    end
end)

RegisterNetEvent('sellsilverore')
AddEventHandler('sellsilverore', function()
    if exports["prp-inventory"]:hasEnoughOfItem("silverore",1,false) then
        local finished = exports["prp-taskbar"]:taskBar(10000,"Selling Silver Ore!")
        if finished == 100 then
            TriggerEvent('inventory:removeItem', 'silverore', 1)
            TriggerServerEvent( 'sk1c2:payout', math.random(90,310))
            TriggerEvent('DoLongHudText', 'You successfully sold a Silver Ore.', 1)
        else
            TriggerEvent('DoLongHudText', 'Cancelled', 2)
        end

    else
        TriggerEvent('DoLongHudText', 'You dont have a Silver Ore to sell', 2)
    end
end)