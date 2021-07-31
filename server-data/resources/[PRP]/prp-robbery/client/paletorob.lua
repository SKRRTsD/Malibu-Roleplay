local powerHit = false
local headingSet = true
local firstGate = 0

local doorCoords = {
    [1] = {["x"] = -104.8828, ["y"] = 6472.442, ["z"] = 30.727, ["doorNum"] = 158, ["disabled"] = false}, -- firstGate
    [2] = {["x"] = -106.424, ["y"] = 6475.046, ["z"] = 30.727, ["doorNum"] = 159, ["disabled"] = false}, -- secondGate
}
local powerStations = {
    [1] = {["x"] = 1351.957, ["y"] = 6381.956, ["z"] = 32.300, ["disabled"] = true},
    [2] = {["x"] = 1344.1, ["y"] = 6382.03, ["z"] = 32.51, ["disabled"] = true},
    [3] = {["x"] = 1344.19, ["y"] = 6388.22, ["z"] = 32.500, ["disabled"] = true},
}
local lootSpots = {
    [1] = {["x"] = -103.054, ["y"] = 6475.795, ["z"] = 30.727, ["disabled"] = false},
    [2] = {["x"] = -103.635, ["y"] = 6477.81, ["z"] = 30.727, ["disabled"] = false},
    [3] = {["x"] = -105.525, ["y"] = 6478.377, ["z"] = 30.727, ["disabled"] = false},
}

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        for i=1, #doorCoords do
            local dist = #(vector3(doorCoords[i].x, doorCoords[i].y,doorCoords[i].z) - GetEntityCoords(ped))
            if dist < 10.0 then
                if dist < 3.5 then
                    found = true
                    if not doorCoords[i].disabled then
                        DrawMarker(27, doorCoords[i].x, doorCoords[i].y,doorCoords[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 50, 50, 255, false, false, 0, 1)
                    else
                        DrawMarker(27, doorCoords[i].x, doorCoords[i].y,doorCoords[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 50, 50, 255, false, false, 0, 1)
                    end
                end
            end
        end
        if found then
            Citizen.Wait(0)
        else
            Citizen.Wait(1000)
        end
        found = false
    end
end)

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        for i=1, #powerStations do
            if #(vector3(powerStations[i].x, powerStations[i].y,powerStations[i].z) - GetEntityCoords(ped)) < 5.0 then
                found = true
                if not powerStations[i].disabled then
                    DrawMarker(27, powerStations[i].x, powerStations[i].y,powerStations[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, 255, 50, 50, 255, false, false, 0, 1)
                else
                    DrawMarker(27, powerStations[i].x, powerStations[i].y,powerStations[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, 255, 50, 50, 255, false, false, 0, 1)
                end
            end
        end
        if found then
            Citizen.Wait(0)
        else
            Citizen.Wait(1000)
        end
        found = false
    end
end)

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        for i=1, #lootSpots do
            local dist = #(vector3(lootSpots[i].x, lootSpots[i].y,lootSpots[i].z) - GetEntityCoords(ped))
            if dist < 1.5 then
                found = true
                if not lootSpots[i].disabled then
                    DrawMarker(27, lootSpots[i].x, lootSpots[i].y,lootSpots[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 50, 50, 255, false, false, 0, 0)
                else
                    DrawMarker(27, lootSpots[i].x, lootSpots[i].y,lootSpots[i].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 50, 255, 50, 255, false, false, 0, 0)
                end
            end
        end
        if found then
            Citizen.Wait(0)
        else
            Citizen.Wait(1000)
        end
        found = false
    end
end)

RegisterNetEvent('prp-paletorob:useEleckit')
AddEventHandler('prp-paletorob:useEleckit', function()
    local ped = PlayerPedId()
    local IsNearStation = IsNearStation()
    local IsNearLoot = IsNearLoot()
    if IsNearStation then
        for i=1, #powerStations do
            if #(vector3(powerStations[i].x, powerStations[i].y,powerStations[i].z) - GetEntityCoords(ped)) < 1.5 then
                if not powerStations[i].disabled then
                    if exports["prp-inventory"]:hasEnoughOfItem("electronickit",1,false) then
                        TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_STAND_MOBILE', 0, true)
                        TriggerEvent("mhacking:show")
                        TriggerEvent("mhacking:start",5,15,PowerGridCallback)
                        TriggerEvent('inventory:removeItem', 'electronickit', 1)
                    end
                else
                    TriggerEvent("DoLongHudText", "This grid is already disabled!", 2)
                end
            end
        end
    elseif IsNearLoot then
        local IsPowerDisabled = IsPowerDisabled()
        for i=1, #lootSpots do
            if #(vector3(lootSpots[i].x, lootSpots[i].y,lootSpots[i].z) - GetEntityCoords(ped)) < 1.5 then
                if not lootSpots[i].disabled then
                    if IsPowerDisabled then
                        if exports["prp-inventory"]:hasEnoughOfItem("electronickit",1,false) then
                            if not cooldown then
                                TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_STAND_MOBILE', 0, true)
                                TriggerEvent("mhacking:show")
                                TriggerEvent("mhacking:start",6,15,LootSpotCallback)
                                print("Looting boxes!")
                                TriggerEvent('inventory:removeItem', 'electronickit', 1)
                            else
                                TriggerEvent("DoLongHudText", "System Rebooting, Please Wait!", 2)
                            end
                        end
                    end
                end
            end
        end
    end
end)

RegisterNetEvent('prp-paletorob:usethermite')
AddEventHandler('prp-paletorob:usethermite', function()
    local ped = PlayerPedId()
    local IsPowerDisabled = IsPowerDisabled()
    for i=1, #doorCoords do
        if #(vector3(doorCoords[i].x, doorCoords[i].y,doorCoords[i].z) - GetEntityCoords(ped)) < 1.5 then
            if not doorCoords[i].disabled then
                if IsPowerDisabled then
                    local outcome = exports['prp-thermite']:startGame(14,1,7,500)
                    if outcome then
                        FreezeEntityPosition(PlayerPedId(), false)
                                local finished = exports["prp-taskbar"]:taskBar(10000, "Unlocking door")
                                TriggerEvent('prp-dispatch:Alertpacific')
                            if finished == 100 then
                                TriggerEvent("DoLongHudText", "Door Unlocked!", 1)
                                TriggerEvent('inventory:removeItem', 'thermite', 1)
                                TriggerServerEvent('prp-paletorob:updateStates', "doors", i, true)
                                TriggerServerEvent('prp-doors:alterlockstate', doorCoords[i].doorNum, 0)
                            end
                        end
                    else
                        TriggerEvent("DoLongHudText", "Seems to risky, go try to turn the power off", 2)
                    end
                end
            end
        end
end)

RegisterNetEvent('prp-paletorob:updateStates')
AddEventHandler('prp-paletorob:updateStates', function(type,id,state)
    if type == "station" then
        powerStations[id].disabled = state
    elseif type == "doors" then 
        doorCoords[id].disabled = state
    elseif type == "loot" then 
        lootSpots[id].disabled = state
    end
end)

RegisterNetEvent('prp-paletorob:resetBank')
AddEventHandler('prp-paletorob:resetBank', function()
    for i=1, # powerStations do
        powerStations[i].disabled = false
    end
    for i=1, #doorCoords do
        doorCoords[i].disabled = false
    end
    for i=1, #lootSpots do
        lootSpots[i].disabled = false
    end
    GotSecCard = false
    GotShipCrate = false
end)

function StartHeadingCheck()
    Citizen.CreateThread(function()
        while true do
            if firstGate == 0 then
                firstGate = GetClosestObjectOfType(-105.674, 6472.675, 31.627, 3.0, `v_ilev_cbankvaulgate01`, 0, 0, 0)
            else
                SetEntityHeading(firstGate, 45.0)
                headingSet = true
                break
            end
            Citizen.Wait(3000)
        end
    end)
end

function PowerGridCallback(success)
	local ped = PlayerPedId()
    TriggerEvent('mhacking:hide')
	if success then
		local station = GetNearestStation()
        TriggerServerEvent("prp-paletorob:updateStates", "station", station, true)
	else
		TriggerEvent('prp-dispatch:powergrid')
	end
	ClearPedTasks(ped)
	ClearPedSecondaryTask(ped)
end

function LootSpotCallback(success)
	local ped = PlayerPedId()
    TriggerEvent('mhacking:hide')
	if success then
		local lootId = GetNearestLootSpot()
        TriggerServerEvent("prp-paletorob:updateStates", "loot", lootId, true)
        TriggerServerEvent("paleto:loot")
        GiveRareLoot()
    else
        cooldown = true
        TriggerEvent("DoLongHudText", "System Rebooting, Please Wait!", 2)
        Citizen.SetTimeout(45000, function()
            cooldown = false
            TriggerEvent("DoLongHudText", "System has rebooted, Be careful next time", 1)
        end)
    end
	ClearPedTasks(ped)
	ClearPedSecondaryTask(ped)
end

function GiveRareLoot()
    local chance = math.random(100)
    if chance < 35 and not GotShipCrate then
        GotShipCrate = true
        TriggerEvent('player:receiveItem','Banbox', 1)
    end
    if chance > 95 and not GotSecCard then
        GotSecCard = true
        TriggerEvent('player:receiveItem', 'Banbox', 1)
    end
end

function IsPowerDisabled()
    local amount = 0
    for i=1, #powerStations do
        if powerStations[i].disabled then
            amount = amount + 1
        end
    end
    if amount == #powerStations then
        return true
    end
    return false
end

function IsNearStation()
    for i=1, #powerStations do
        if #(vector3(powerStations[i].x, powerStations[i].y,powerStations[i].z) - GetEntityCoords(PlayerPedId())) < 1.5 then
            return true
        end
    end
    return false
end

function IsNearLoot()
    for i=1, #lootSpots do
        if #(vector3(lootSpots[i].x, lootSpots[i].y,lootSpots[i].z) - GetEntityCoords(PlayerPedId())) < 1.5 then
            return true
        end
    end
    return false
end

function GetNearestStation()
    for i=1, #powerStations do
        if #(vector3(powerStations[i].x, powerStations[i].y,powerStations[i].z) - GetEntityCoords(PlayerPedId())) < 2.0 then
            return i
        end
    end
    return 0
end

function GetNearestLootSpot()
    for i=1, #lootSpots do
        if #(vector3(lootSpots[i].x, lootSpots[i].y,lootSpots[i].z) - GetEntityCoords(PlayerPedId())) < 2.0 then
            return i
        end
    end
    return 0
end