local scenes = {}

RegisterNetEvent('prp-scenes:fetch', function()
    local src = source
    TriggerClientEvent('prp-scenes:send', src, scenes)
end)

RegisterNetEvent('prp-scenes:add', function(coords, message, color, distance)
    table.insert(scenes, {
        message = message,
        color = color,
        distance = distance,
        coords = coords
    })
    TriggerClientEvent('prp-scenes:send', -1, scenes)
    TriggerEvent('prp-scenes:log', source, message, coords)
end)

RegisterNetEvent('prp-scenes:delete', function(key)
    table.remove(scenes, key)
    TriggerClientEvent('prp-scenes:send', -1, scenes)
end)


RegisterNetEvent('prp-scenes:log', function(id, text, coords)
    local f, err = io.open('sceneLogging.txt', 'a')
    if not f then return print(err) end
    f:write('Player: ['..id..'] Placed Scene: ['..text..'] At Coords = '..coords..'\n')
    f:close()
end)