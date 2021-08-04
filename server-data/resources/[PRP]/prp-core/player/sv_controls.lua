RegisterServerEvent("mrp-core:sv:player_control_set")
AddEventHandler("mrp-core:sv:player_control_set", function(controlsTable)
    local src = source
    PRP.DB:UpdateControls(src, controlsTable, function(UpdateControls, err)
            if UpdateControls then
                -- we are good here.
            end
    end)
end)

RegisterServerEvent("mrp-core:sv:player_controls")
AddEventHandler("mrp-core:sv:player_controls", function()
    local src = source
    PRP.DB:GetControls(src, function(loadedControls, err)
        if loadedControls ~= nil then 
            TriggerClientEvent("mrp-core:cl:player_control", src, loadedControls) 
        else 
            TriggerClientEvent("mrp-core:cl:player_control",src, nil)
        end
    end)
end)
