local ongoing = false
local mixing = false

RegisterNetEvent("coke:start")
AddEventHandler("coke:start", function()
	local playerped = PlayerPedId()
	local plyCoords = GetEntityCoords(PlayerPedId()) 
	local distance = (GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, 1092.8562011719, -3196.6508789062, -38.99348449707, false))		
	TriggerEvent("coke:menu")
	ongoing = true
	mixing = true
	if mixing == true then
		ongoing = false
		mixing = false
	elseif mixing == false then
		TriggerEvent("DoLongHudText", "Failed!")
	end
end)


RegisterNetEvent('animation:load')
AddEventHandler('animation:load', function(dict)
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end)

RegisterNetEvent('animation:coke')
AddEventHandler('animation:coke', function()
	inanimation = true
	local lPed = GetPlayerPed(-1)
	RequestAnimDict("anim@amb@business@coc@coc_unpack_cut@")
	while not HasAnimDictLoaded("anim@amb@business@coc@coc_unpack_cut@") do
		Citizen.Wait(0)
	end

	if IsEntityPlayingAnim(lPed, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v1_cokepacker", 3) then
		ClearPedSecondaryTask(lPed)
	else
		TaskPlayAnim(lPed, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v1_cokepacker", 8.0, -8, -1, 49, 0, 0, 0, 0)
		seccount = 4
		while seccount > 0 do
			Citizen.Wait(10000)
			FreezeEntityPosition(PlayerPedId(),false)
			seccount = seccount - 1
		end
		ClearPedSecondaryTask(lPed)
	end		
	inanimation = false
end)

RegisterNetEvent('coke:animation')
AddEventHandler('coke:animation', function()
	inanimation = true
	local lPed = GetPlayerPed(-1)
	RequestAnimDict("anim@amb@business@coc@coc_unpack_cut@")
	while not HasAnimDictLoaded("anim@amb@business@coc@coc_unpack_cut@") do
		Citizen.Wait(0)
	end

	if IsEntityPlayingAnim(lPed, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v6_cokecutter", 3) then
		ClearPedSecondaryTask(lPed)
	else
		TaskPlayAnim(lPed, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v6_cokecutter", 8.0, -8, -1, 49, 0, 0, 0, 0)
		seccount = 4
		while seccount > 0 do
			Citizen.Wait(10000)
			FreezeEntityPosition(PlayerPedId(),false)
			seccount = seccount - 1
		end
		ClearPedSecondaryTask(lPed)
	end		
	inanimation = false
end)

RegisterNetEvent("coke:sell")
AddEventHandler("coke:sell", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("1gcoke",1,false) then
		LoadDict('mp_safehouselost@')
		TaskPlayAnim(GetPlayerPed(-1), "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
		local finished = exports["mrp-taskbar"]:taskBar(3000,"Handing Over Something")
		if (finished == 100) then
			local coke = 245
			TriggerServerEvent("meth:givemoney", coke)
			TriggerEvent("inventory:removeItem","1gcoke", 1)
			TriggerEvent("player:receiveItem","rollcash",math.random(10,20))
			TriggerEvent("DoLongHudText", "Thanks Man, Heres a lil something for that.")
			Citizen.Wait(5000)
		end
	else
	 TriggerEvent('DoLongHudText', "You need something!!", 2)
	end
end)

RegisterNetEvent("makecoke")
AddEventHandler("makecoke", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("cocapaste",25,false) and exports["mrp-inventory"]:hasEnoughOfItem("bakingsoda",25,false) then
	TriggerEvent("coke:animation")
	FreezeEntityPosition(GetPlayerPed(-1),true)
	local finished = exports["mrp-taskbar"]:taskBar(30000,"Producing Cocaine")
	if (finished == 100) then
		TriggerEvent("inventory:removeItem","bakingsoda", 25)
		TriggerEvent("inventory:removeItem","cocapaste", 25)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		TriggerEvent("player:receiveItem","coke50g", 1)
	else
		TriggerEvent("DoLongHudText", "Cancelled", 2)
		FreezeEntityPosition(GetPlayerPed(-1),false)
	end
    else
		TriggerEvent("DoLongHudText", "You dont got the correct shit Dawg!", 2)
	end
end)

RegisterNetEvent('coke:menu')
AddEventHandler('coke:menu', function()
	TriggerEvent('mrp-context:sendMenu', {
        {
            id = 1,
            header = "Coke Menu",
            txt = ""
        },
        {
            id = 2,
            header = "Produce Cocaine",
			txt = "You need 25 Coca Paste and 25 Baking Soda for 1 Brick!",
			params = {
                event = "makecoke",
            }
        },
		{
            id = 3,
            header = "Close Menu",
			txt = "",
			params = {
                event = "CloseMenu"
            }
        },
    })
end)

local pCokeLeaf = false

Citizen.CreateThread(function()
    exports["mrp-polyzone"]:AddBoxZone("cocaine_paste", vector3(509.4, 6487.62, 30.78), 30, 5.3, {
        name="cocaine_paste",
		heading=0,
        --debugPoly=true,
		minZ=27.38,
		maxZ=31.38
    })  
end)


RegisterNetEvent('mrp-polyzone:enter')
AddEventHandler('mrp-polyzone:enter', function(name)
    if name == "cocaine_paste" then
        pCokeLeaf = true
        CokeLeafSpot()
		TriggerEvent('mrp-textui:ShowUI', 'show', ("[E] %s"):format("Pick Leafs")) 
    end
end)

RegisterNetEvent('mrp-polyzone:exit')
AddEventHandler('mrp-polyzone:exit', function(name)
    if name == "cocaine_paste" then
        pCokeLeaf = false
    end
    TriggerEvent('mrp-ui:HideUI')
end)

function CokeLeafSpot()
    Citizen.CreateThread(function()
        while pCokeLeaf do
            Citizen.Wait(5)
			if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then
					TriggerEvent("animation:farm")
					local finished = exports["mrp-taskbar"]:taskBar(4000,"Picking Leafs")
					if (finished == 100) then
						TriggerEvent("player:receiveItem","cocaleaf", math.random(1,3))
						TriggerEvent("client:newStress",true,50)
					end		
				end
			end
		end)
	end

	RegisterNetEvent('leaf:menu')
	AddEventHandler('leaf:menu', function()
	TriggerEvent('mrp-context:sendMenu', {
        {
            id = 1,
            header = "Mashing Leafs",
            txt = ""
        },
        {
            id = 2,
            header = "Mash 1 Leaf Into Paste",
			txt = "Mash 1 Leaf",
			params = {
                event = "mash1leaf",
            }
        },
		{
            id = 3,
            header = "Mash 5 Leafs Into Paste",
			txt = "Mash 5 Leafs",
			params = {
                event = "mash5leafs",
            }
        },
		{
            id = 4,
            header = "Close Menu",
			txt = "Close",
			params = {
                event = ""
            }
        },
    })
end)

RegisterNetEvent("mash1leaf")
AddEventHandler("mash1leaf", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("cocaleaf",1,false) then
	TriggerEvent("coke:animation")
	FreezeEntityPosition(GetPlayerPed(-1),true)
	local finished = exports["mrp-taskbar"]:taskBar(30000,"Mashing Leaf")
	if (finished == 100) then
		TriggerEvent("inventory:removeItem","cocaleaf", 1)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		TriggerEvent("player:receiveItem","cocapaste", 1)
	else
		TriggerEvent("DoLongHudText", "Cancelled", 2)
		FreezeEntityPosition(GetPlayerPed(-1),false)
	end
    else
		TriggerEvent("DoLongHudText", "You dont got the correct shit Hawmie!", 2)
	end
end)

RegisterNetEvent("mash5leafs")
AddEventHandler("mash5leafs", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("cocaleaf",5,false) then
	TriggerEvent("coke:animation")
	FreezeEntityPosition(GetPlayerPed(-1),true)
	local finished = exports["mrp-taskbar"]:taskBar(30000,"Mashing Leafs")
	if (finished == 100) then
		TriggerEvent("inventory:removeItem","cocaleaf", 5)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		TriggerEvent("player:receiveItem","cocapaste", 5)
	else
		TriggerEvent("DoLongHudText", "Cancelled", 2)
		FreezeEntityPosition(GetPlayerPed(-1),false)
	end
    else
		TriggerEvent("DoLongHudText", "You dont got the correct shit Hawmie!", 2)
	end
end)