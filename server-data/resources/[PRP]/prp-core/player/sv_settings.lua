RegisterServerEvent("mrp-core:sv:player_settings_set")
AddEventHandler("mrp-core:sv:player_settings_set", function(settingsTable)
    local src = source
    PRP.DB:UpdateSettings(src, settingsTable, function(UpdateSettings, err)
            if UpdateSettings then
                -- we are good here.
            end
    end)
end)

RegisterServerEvent("mrp-core:sv:player_settings")
AddEventHandler("mrp-core:sv:player_settings", function()
    local src = source
    PRP.DB:GetSettings(src, function(loadedSettings, err)
        if loadedSettings ~= nil then 
            TriggerClientEvent("mrp-core:cl:player_settings", src, loadedSettings) 
        else 
            TriggerClientEvent("mrp-core:cl:player_settings",src, nil) 
        end
    end)
end)
