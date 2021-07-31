PRP.Core.hasLoaded = false


function PRP.Core.Initialize(self)
    Citizen.CreateThread(function()
        while true do
            if NetworkIsSessionStarted() then
                TriggerEvent("prp-core:playerSessionStarted")
                TriggerServerEvent("prp-core:playerSessionStarted")
                break
            end
        end
    end)
end
PRP.Core:Initialize()

AddEventHandler("prp-core:playerSessionStarted", function()
    while not PRP.Core.hasLoaded do
        --print("waiting in loop")
        Wait(100)
    end
    ShutdownLoadingScreen()
    PRP.SpawnManager:Initialize()
end)

RegisterNetEvent("prp-core:waitForExports")
AddEventHandler("prp-core:waitForExports", function()
    if not PRP.Core.ExportsReady then return end

    while true do
        Citizen.Wait(0)
        if exports and exports["prp-core"] then
            TriggerEvent("prp-core:exportsReady")
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
    local cid = exports["prp_manager"]:isPed("cid")
    TriggerServerEvent("paycheck:server:send", cid)
end)