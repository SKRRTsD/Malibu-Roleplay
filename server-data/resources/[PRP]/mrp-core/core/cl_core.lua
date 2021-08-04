PRP.Core.hasLoaded = false


function PRP.Core.Initialize(self)
    Citizen.CreateThread(function()
        while true do
            if NetworkIsSessionStarted() then
                TriggerEvent("mrp-core:playerSessionStarted")
                TriggerServerEvent("mrp-core:playerSessionStarted")
                break
            end
        end
    end)
end
PRP.Core:Initialize()

AddEventHandler("mrp-core:playerSessionStarted", function()
    while not PRP.Core.hasLoaded do
        --print("waiting in loop")
        Wait(100)
    end
    ShutdownLoadingScreen()
    PRP.SpawnManager:Initialize()
end)

RegisterNetEvent("mrp-core:waitForExports")
AddEventHandler("mrp-core:waitForExports", function()
    if not PRP.Core.ExportsReady then return end

    while true do
        Citizen.Wait(0)
        if exports and exports["mrp-core"] then
            TriggerEvent("mrp-core:exportsReady")
            return
        end
    end
end)

RegisterNetEvent("customNotification")
AddEventHandler("customNotification", function(msg, length, type)

	TriggerEvent("chatMessage","SYSTEM",4,msg)
end)

RegisterNetEvent("base:disableLoading")
AddEventHandler("base:disableLoading", function()
    if not PRP.Core.hasLoaded then
         PRP.Core.hasLoaded = true
    end
end)

Citizen.CreateThread( function()
    TriggerEvent("base:disableLoading")
end)


RegisterNetEvent("paycheck:client:call")
AddEventHandler("paycheck:client:call", function()
    local cid = exports["mrp_manager"]:isPed("cid")
    TriggerServerEvent("paycheck:server:send", cid)
end)