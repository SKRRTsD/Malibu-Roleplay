local isVisible = false
local tabletObject = nil
local callBip = nil
local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" }


TriggerServerEvent("mrp-mdt:getOffensesAndOfficer")

RegisterNetEvent("mrp-mdt:toggleVisibilty")
AddEventHandler("mrp-mdt:toggleVisibilty", function(reports, warrants, officer, job)
    local playerPed = PlayerPedId()
    if not isVisible then
        local dict = "amb@world_human_seat_wall_tablet@female@base"
        RequestAnimDict(dict)
        if tabletObject == nil then
            tabletObject = CreateObject(GetHashKey('prop_cs_tablet'), GetEntityCoords(playerPed), 1, 1, 1)
            AttachEntityToEntity(tabletObject, playerPed, GetPedBoneIndex(playerPed, 28422), 0.0, 0.0, 0.03, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        end
        while not HasAnimDictLoaded(dict) do Citizen.Wait(100) end
        if not IsEntityPlayingAnim(playerPed, dict, 'base', 3) then
            TaskPlayAnim(playerPed, dict, "base", 8.0, 1.0, -1, 49, 1.0, 0, 0, 0)
        end
    else
        DeleteEntity(tabletObject)
        ClearPedTasks(playerPed)
        tabletObject = nil
    end
    if #warrants == 0 then warrants = false end
    if #reports == 0 then reports = false end
    SendNUIMessage({
        type = "recentReportsAndWarrantsLoaded",
        reports = reports,
        warrants = warrants,
        officer = officer,
        department = job
    })
    ToggleGUI()
    TriggerServerEvent("mrp-mdt:getOffensesAndOfficer")
end)

RegisterNetEvent("mrp-mdt:hotKeyOpen")
AddEventHandler("mrp-mdt:hotKeyOpen", function()
    local myjob = exports["prp_manager"]:isPed("myjob")
    if myjob == "police" then
        TriggerServerEvent('mrp-mdt:Open', "police")
    elseif myjob == "DOJ" then
        TriggerServerEvent('mrp-mdt:Open', "DOJ")
    end
end)

RegisterNUICallback("close", function(data, cb)
    local playerPed = PlayerPedId()
    DeleteEntity(tabletObject)
    ClearPedTasks(playerPed)
    tabletObject = nil
    ToggleGUI(false)
    cb('ok')
end)

RegisterNUICallback("performOffenderSearch", function(data, cb)
    TriggerServerEvent("mrp-mdt:performOffenderSearch", data.query)
    cb('ok')
end)

RegisterNUICallback("viewOffender", function(data, cb)
    TriggerServerEvent("mrp-mdt:getOffenderDetails", data.offender)
    cb('ok')
end)

RegisterNUICallback("saveOffenderChanges", function(data, cb)
    TriggerServerEvent("mrp-mdt:saveOffenderChanges", data.id, data.changes, data.identifier)
    cb('ok')
end)

RegisterNUICallback("submitNewReport", function(data, cb)
    TriggerServerEvent("mrp-mdt:submitNewReport", data)
    cb('ok')
end)

RegisterNUICallback("performReportSearch", function(data, cb)
    TriggerServerEvent("mrp-mdt:performReportSearch", data.query)
    cb('ok')
end)

RegisterNUICallback("getOffender", function(data, cb)
    TriggerServerEvent("mrp-mdt:getOffenderDetailsById", data.char_id)

    cb('ok')
end)

RegisterNUICallback("deleteReport", function(data, cb)
    TriggerServerEvent("mrp-mdt:deleteReport", data.id)
    TriggerServerEvent("mrp-mdt:delreport")
    cb('ok')
end)

RegisterNUICallback("saveReportChanges", function(data, cb)
    TriggerServerEvent("mrp-mdt:saveReportChanges", data)
    cb('ok')
end)

-- RegisterNUICallback("vehicleSearch", function(data, cb)
--     TriggerServerEvent("mrp-mdt:performVehicleSearch", data.plate)
--     cb('ok')
-- end)

-- RegisterNUICallback("getVehicle", function(data, cb)
--     TriggerServerEvent("mrp-mdt:getVehicle", data.vehicle)
--     cb('ok')
-- end)

RegisterNUICallback("getWarrants", function(data, cb)
    TriggerServerEvent("mrp-mdt:getWarrants")
end)

RegisterNUICallback("submitNewWarrant", function(data, cb)
    TriggerServerEvent("mrp-mdt:submitNewWarrant", data)
    cb('ok')
end)

RegisterNUICallback("deleteWarrant", function(data, cb)
    TriggerServerEvent("mrp-mdt:deleteWarrant", data.id)
    TriggerServerEvent('mrp-mdt:delwarrant')
    cb('ok')
end)

RegisterNUICallback("getReport", function(data, cb)
    TriggerServerEvent("mrp-mdt:getReportDetailsById", data.id)
    cb('ok')
end)

-- RegisterNUICallback("saveVehicleChanges", function(data, cb)
--     TriggerServerEvent("mrp-mdt:saveVehicleChanges", data)
--     cb('ok')
-- end)

RegisterNetEvent("mrp-mdt:returnOffenderSearchResults")
AddEventHandler("mrp-mdt:returnOffenderSearchResults", function(results)
    SendNUIMessage({
        type = "returnedPersonMatches",
        matches = results
    })
end)

RegisterNetEvent("mrp-mdt:closeModal")
AddEventHandler("mrp-mdt:closeModal", function()
    SendNUIMessage({
        type = "closeModal"
    })
end)

RegisterNetEvent("mrp-mdt:returnOffenderDetails")
AddEventHandler("mrp-mdt:returnOffenderDetails", function(data)
    -- for i = 1, #data.vehicles do
    --     data.vehicles[i].model = GetLabelText(GetDisplayNameFromVehicleModel(data.vehicles[i].model))
    -- end
    SendNUIMessage({
        type = "returnedOffenderDetails",
        details = data
    })
end)

RegisterNetEvent("mrp-mdt:returnOffensesAndOfficer")
AddEventHandler("mrp-mdt:returnOffensesAndOfficer", function(data, name)
    SendNUIMessage({
        type = "offensesAndOfficerLoaded",
        offenses = data,
        name = name
    })
end)

RegisterNetEvent("mrp-mdt:returnReportSearchResults")
AddEventHandler("mrp-mdt:returnReportSearchResults", function(results)
    SendNUIMessage({
        type = "returnedReportMatches",
        matches = results
    })
end)

-- RegisterNetEvent("mrp-mdt:returnVehicleSearchInFront")
-- AddEventHandler("mrp-mdt:returnVehicleSearchInFront", function(results, plate)
--     SendNUIMessage({
--         type = "returnedVehicleMatchesInFront",
--         matches = results,
--         plate = plate
--     })
-- end)

-- RegisterNetEvent("mrp-mdt:returnVehicleSearchResults")
-- AddEventHandler("mrp-mdt:returnVehicleSearchResults", function(results)
--     SendNUIMessage({
--         type = "returnedVehicleMatches",
--         matches = results
--     })
-- end)

-- RegisterNetEvent("mrp-mdt:returnVehicleDetails")
-- AddEventHandler("mrp-mdt:returnVehicleDetails", function(data)
--     if type(data.model) == 'number' then
--         data.model = GetLabelText(GetDisplayNameFromVehicleModel(data.model))
--     end
--     SendNUIMessage({
--         type = "returnedVehicleDetails",
--         details = data
--     })
-- end)

RegisterNetEvent("mrp-mdt:returnWarrants")
AddEventHandler("mrp-mdt:returnWarrants", function(data)
    SendNUIMessage({
        type = "returnedWarrants",
        warrants = data
    })
end)

RegisterNetEvent("mrp-mdt:completedWarrantAction")
AddEventHandler("mrp-mdt:completedWarrantAction", function(data)
    SendNUIMessage({
        type = "completedWarrantAction"
    })
end)

RegisterNetEvent("mrp-mdt:returnReportDetails")
AddEventHandler("mrp-mdt:returnReportDetails", function(data)
    SendNUIMessage({
        type = "returnedReportDetails",
        details = data
    })
end)

RegisterNetEvent("mrp-mdt:sendNUIMessage")
AddEventHandler("mrp-mdt:sendNUIMessage", function(messageTable)
    SendNUIMessage(messageTable)
end)

RegisterNetEvent("mrp-mdt:sendNotification")
AddEventHandler("mrp-mdt:sendNotification", function(message)
    SendNUIMessage({
        type = "sendNotification",
        message = message
    })
end)


function ToggleGUI(explicit_status)
  if explicit_status ~= nil then
    isVisible = explicit_status
  else
    isVisible = not isVisible
  end
  SetNuiFocus(isVisible, isVisible)
  SendNUIMessage({
    type = "enable",
    isVisible = isVisible
  })
end

RegisterCommand('mdt', function()
    if exports["prp_manager"]:isPed("myjob") == 'police' then
        TriggerEvent('mrp-mdt:hotKeyOpen')
    else
        TriggerEvent('DoLongHudText', 'You are not a police officer!', 2)
   end
end)