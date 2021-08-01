
RegisterServerEvent("submit:bug:report", function(data)
    local pSrc = source
    print (data.description, data.url, data.title)
    if data.description and data.url and data.title ~= "" then
        local LogData = {
            {
                ['description'] = string.format("`%s`\n\n`• Bug: %s`\n\n`Description: %s`\n\n`• Discord Name: %s`\n\n", "Bug Report", data.title,  data.description, data.url),
                ['color'] = 2317994,
            }
        }
        PerformHttpRequest("https://discord.com/api/webhooks/871354409731383326/iWseFz7F_1rbA4iOpmTsQpk0GWI0lFToZYq2D-RSWjMC3Wvn_-1O34XqVxYTSpNRimbO", function(err, text, headers) end, 'POST', json.encode({username = name, embeds = LogData}), { ['Content-Type'] = 'application/json' })	
        TriggerClientEvent("DoLongHudText", pSrc, "Thank you for submitting a bug report, we will look into this!")
    else
        TriggerClientEvent("DoLongHudText", pSrc, "You did not follow the format!", 2)
    end
end)