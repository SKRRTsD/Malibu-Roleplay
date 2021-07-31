local pHerionSpot = false

Citizen.CreateThread(function()
    exports["prp-polyzone"]:AddBoxZone("Herion_Spot", vector3(-2574.32, 2534.42, 1.84), 25.0, 30, {
        name="Herion_Spot",
        heading=0,
        --debugPoly=true,
        minZ=0.24,
        maxZ=3.84
    })  
end)


RegisterNetEvent('prp-polyzone:enter')
AddEventHandler('prp-polyzone:enter', function(name)
    if name == "Herion_Spot" then
        pHerionSpot = true
        NearHerionSpot()
		TriggerEvent('prp-textui:ShowUI', 'show', ("[E] %s"):format("Pick opium poppy")) 
    end
end)

RegisterNetEvent('prp-polyzone:exit')
AddEventHandler('prp-polyzone:exit', function(name)
    if name == "Herion_Spot" then
        pHerionSpot = false
    end
    TriggerEvent('prp-ui:HideUI')
end)


function NearHerionSpot()
    Citizen.CreateThread(function()
        while pHerionSpot do
            Citizen.Wait(5)
			if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then
				if JustPickedPoppy then
					TriggerEvent("DoLongHudText","You are too tired , try again in a few seconds!", 2)
				else
					if not JustPickedPoppy then
						JustPickedPoppy = true
					   TriggerEvent("pluto:drugs-prevent","picking")
					end

					TriggerEvent("animation:farm")
					local finished = exports["prp-taskbar"]:taskBar(4000,"Picking")
					if (finished == 100) then
						TriggerEvent("player:receiveItem","opiumpoppy", math.random(1,2))
						TriggerEvent("client:newStress",true,50)
					end
				end			
			end
        end
    end)
end

-- Cooldown
RegisterNetEvent('pluto:drugs-prevent')
AddEventHandler('pluto:drugs-prevent', function(prevent)
	if prevent == "picking" then
		Wait(20000) -- 20 seconds
		JustPickedPoppy = false
	end
end)
