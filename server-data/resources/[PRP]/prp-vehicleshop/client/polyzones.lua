local nearRepo = false

Citizen.CreateThread(function()
    exports["mrp-polyzone"]:AddBoxZone("veh_shop_repo", vector3(-239.27, -1183.79, 23.04), 8.6, 5, {
        name="veh_shop_repo",
        heading=270,
        --debugPoly=true,
        minZ=22.04,
        maxZ=24.44
    }) 
end)


RegisterNetEvent('mrp-polyzone:enter')
AddEventHandler('mrp-polyzone:enter', function(name)
    if name == "veh_shop_repo" then
        local job = exports["mrp_manager"]:isPed("myjob")
        if job == "car_shop" then
            nearRepo = true
            AtRepo()
            TriggerEvent('mrp-textui:ShowUI', 'show', ("[E] %s"):format("Repo Vehicle"))
        end
    end
end)

RegisterNetEvent('mrp-polyzone:exit')
AddEventHandler('mrp-polyzone:exit', function(name)
    if name == "veh_shop_repo" then
        local job = exports["mrp_manager"]:isPed("myjob")
        if job == "car_shop" then
            nearRepo = false
            TriggerEvent('mrp-textui:HideUI')
        end
    end
end)

function AtRepo()
	Citizen.CreateThread(function()
        while nearRepo do
            Citizen.Wait(5)
			local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= 0 then
                local plate = GetVehicleNumberPlateText(vehicle)
                if IsControlJustReleased(0, 38) then
                    TriggerServerEvent("mrp-vehicleshop:repo", plate)
                end
            end
        end
    end)
end