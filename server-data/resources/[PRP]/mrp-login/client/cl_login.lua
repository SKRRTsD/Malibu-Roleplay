local menuOpen = false
local setDate = 0


local function sendMessage(data)
    SendNUIMessage(data)
end

local function openMenu()
    menuOpen = true
    sendMessage({open = true})
    SetNuiFocus(true, true)
    TriggerEvent("resetinhouse")
    TriggerEvent("loading:disableLoading")
    Citizen.CreateThread(function()
        while menuOpen do
            Citizen.Wait(0)
            HideHudAndRadarThisFrame()
            DisableAllControlActions(0)
            TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), true)
            
        end
    end)
end

local function closeMenu()
    menuOpen = false
    EnableAllControlActions(0)
    TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), false)
    SetNuiFocus(false, false)
end

local function disconnect()
    TriggerServerEvent("mrp-login:disconnectPlayer")
end

local function nuiCallBack(data)
    Citizen.Wait(60)
    local events = exports["mrp-core"]:getModule("Events")

    if data.close then closeMenu() end
    if data.disconnect then disconnect() end
    if data.showcursor or data.showcursor == false then SetNuiFocus(true, data.showcursor) end
    if data.setcursorloc then SetCursorLocation(data.setcursorloc.x, data.setcursorloc.y) end
    
    if data.fetchdata then
        events:Trigger("mrp-core:loginPlayer", nil, function(data)
            if type(data) == "table" and data.err then
                sendMessage({err = data})
                return
            end

            sendMessage({playerdata = data})
        end)
    end

    if data.newchar then
        if not data.chardata then return end

        events:Trigger("mrp-core:createCharacter", data.chardata, function(created)
            if not created then
                created = {
                    err = true,
                    msg = "There was an error while creating your character, value returned nil or false. Contact an administrator if this persists."
                }

                sendMessage({err = created})
                return
            end

            if type(created) == "table" and created.err then
                sendMessage({err = created})
                return
            end

            sendMessage({createCharacter = created})
        end)
    end

    if data.fetchcharacters then
        events:Trigger("mrp-core:fetchPlayerCharacters", nil, function(data)
            if data.err then
                sendMessage({err = data})
                return
            end

            -- why the fuck do I have to do this???
            for k,v in ipairs(data) do
                data["char" .. k] = data[k]
                data[k] = nil
            end

            sendMessage({playercharacters = data})
           
        end)
    end

    if data.deletecharacter then
        if not data.deletecharacter then return end

        events:Trigger("mrp-core:deleteCharacter", data.deletecharacter, function(deleted)
            sendMessage({reload = true})
        end)
    end

    if data.selectcharacter then
        events:Trigger("mrp-core:selectCharacter", data.selectcharacter, function(data)
           
            if not data.loggedin or not data.chardata then sendMessage({err = {err = true, msg = "There was a problem logging in as that character, if the problem persists, contact an administrator <br/> Cid: " .. tostring(data.selectcharacter)}}) return end

            local LocalPlayer = exports["mrp-core"]:getModule("LocalPlayer")
            LocalPlayer:setCurrentCharacter(data.chardata)
            local cid = LocalPlayer:getCurrentCharacter().id
            TriggerEvent('updatecid', cid)
            
            sendMessage({close = true})

            
            SetPlayerInvincible(PlayerPedId(), true)


            TriggerEvent("mrp-core:firstSpawn")
            closeMenu()
            Citizen.Wait(5000)
            TriggerEvent("Relog")
            SetNuiFocus(false, false)
            Citizen.Wait(1000)
            SetPlayerInvincible(PlayerPedId(), false)
        end)
    end
end

RegisterNUICallback("nuiMessage", nuiCallBack)

RegisterNetEvent("mrp-core:spawnInitialized")
AddEventHandler("mrp-core:spawnInitialized", function()
    openMenu()
end)

RegisterNetEvent("updateTimeReturn")
AddEventHandler("updateTimeReturn", function()
    setDate = "" .. 0 .. ""
    sendMessage({date = setDate})
end)

RegisterNetEvent("character:finishedLoadingChar", function()
    -- Main events leave alone 
    TriggerServerEvent('character:loadspawns')
    TriggerEvent("mrp-core:playerSpawned")
    TriggerEvent("loadedinafk")
    TriggerEvent("playerSpawned")
    TriggerEvent("mrp-weathersync:spawned")
    TriggerEvent("fx:clear")
    TriggerServerEvent('tattoos:retrieve')
    TriggerServerEvent('Blemishes:retrieve')
    TriggerServerEvent("currentconvictions")
    TriggerServerEvent("banking-loaded-in")
    TriggerServerEvent('mrp-doors:requestlatest')
    TriggerServerEvent("mrp-weapons:getAmmo")
    
    Wait(3000)
    TriggerServerEvent("bones:server:requestServer")

  	-- Events
	TriggerServerEvent("police:SetMeta")
	TriggerServerEvent("server:currentpasses")
	TriggerServerEvent("commands:player:login")
	TriggerServerEvent("retreive:licenes:server")


    -- Jail
	TriggerServerEvent("retreive:jail",exports["mrp_manager"]:isPed("cid"))	

    -- shit
    TriggerServerEvent("asset_portals:get:coords")
    TriggerServerEvent('mrp-scoreboard:AddPlayer')
    TriggerServerEvent('mrp-adminmenu:AddPlayer')
    TriggerServerEvent("police:getAnimData")
    TriggerServerEvent("trucker:returnCurrentJobs")
    TriggerEvent("reviveFunction")
    TriggerServerEvent("login:get:keys", exports["mrp_manager"]:isPed("cid"))	
    TriggerEvent("menu:veh:relog") -- resets menu garage options
    TriggerServerEvent("police:SetMeta")
end)



RegisterNetEvent("mrp-login:finishedClothing")
AddEventHandler("mrp-login:finishedClothing", function(endType)
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)
    local pos = vector3(-470.23648071289, -675.15026855469, 11.805932044983)
    local distance = #(playerCoords - pos)
    if distance <= 10 then
    	if endType == "Finished" then
            TriggerEvent("erp:afk:update", false)
            TriggerEvent("mrp-clothingmenu:Spawning", false)
            DestroyAllCams(true)
            RenderScriptCams(false, true, 1, true, true)
            TriggerServerEvent("character:new:character", exports["mrp_manager"]:isPed("cid"))
            TriggerEvent("mrp-core:playerSpawned")
            Citizen.Wait(500)
            TriggerServerEvent("mrp-login:licenses")
    	else
    		TriggerEvent("mrp-core:RefreshSpawn")
    	end
    end	
end)


