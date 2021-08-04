local ongoing = false
local mixing = false

RegisterNetEvent("crack:start")
AddEventHandler("crack:start", function()
	local playerped = PlayerPedId()
	local plyCoords = GetEntityCoords(PlayerPedId()) 
	local distance = (GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, 1092.8562011719, -3196.6508789062, -38.99348449707, false))		
	TriggerEvent("crack:menu")
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

RegisterNetEvent('animation:crack')
AddEventHandler('animation:crack', function()
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

RegisterNetEvent('crack:animation')
AddEventHandler('crack:animation', function()
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

RegisterNetEvent("crack:sell")
AddEventHandler("crack:sell", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("1gcrack",1,false) then
		LoadDict('mp_safehouselost@')
		TaskPlayAnim(GetPlayerPed(-1), "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
		local finished = exports["mrp-taskbar"]:taskBar(3000,"Handing Over Something")
		if (finished == 100) then
			local crack = 245
			TriggerServerEvent("meth:givemoney", crack)
			TriggerEvent("inventory:removeItem","1gcrack", 1)
			TriggerEvent("player:receiveItem","rollcash",math.random(10,20))
			TriggerEvent("DoLongHudText", "Thanks Man, Heres a lil something for that.")
			Citizen.Wait(5000)
		end
	else
	 TriggerEvent('DoLongHudText', "You need something!!", 2)
	end
end)

RegisterNetEvent("makecrack")
AddEventHandler("makecrack", function()
	if exports["mrp-inventory"]:hasEnoughOfItem("bakingsoda",5,false) and exports["mrp-inventory"]:hasEnoughOfItem("chloroform",2,false) and exports["mrp-inventory"]:hasEnoughOfItem("dye",3,false) and ongoing == false then
	TriggerEvent("crack:animation")
	FreezeEntityPosition(GetPlayerPed(-1),true)
	local finished = exports["mrp-taskbar"]:taskBar(15000,"Making Crack")
	if (finished == 100) then
		TriggerEvent("inventory:removeItem","bakingsoda", 5)
		TriggerEvent("inventory:removeItem","chloroform", 2)
		TriggerEvent("inventory:removeItem","dye", 3)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		TriggerEvent("player:receiveItem","1gcrack", math.random(1,2))
	else
		TriggerEvent("DoLongHudText", "Cancelled", 2)
		FreezeEntityPosition(GetPlayerPed(-1),false)
	end
    else
		TriggerEvent("DoLongHudText", "You dont got the correct shit Dawg!", 2)
	end
end)

RegisterNetEvent('crack:menu')
AddEventHandler('crack:menu', function()
	TriggerEvent('mrp-context:sendMenu', {
        {
            id = 1,
            header = "Crack Menu",
            txt = ""
        },
        {
            id = 2,
            header = "Make crack",
			txt = "",
			params = {
                event = "makecrack",
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