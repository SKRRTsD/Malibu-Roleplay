local scenes = {}

RegisterNetEvent('mrp-scenes:fetch', function()
    local src = source
    TriggerClientEvent('mrp-scenes:send', src, scenes)
end)

RegisterNetEvent('mrp-scenes:add', function(coords, message, color, distance)
    table.insert(scenes, {
        message = message,
        color = color,
        distance = distance,
        coords = coords
    })
    TriggerClientEvent('mrp-scenes:send', -1, scenes)
    TriggerEvent('mrp-scenes:log', source, message, coords)
end)

RegisterNetEvent('mrp-scenes:delete', function(key)
    table.remove(scenes, key)
    TriggerClientEvent('mrp-scenes:send', -1, scenes)
end)


RegisterNetEvent('mrp-scenes:log', function(id, text, coords)
    local f, err = io.open('sceneLogging.txt', 'a')
    if not f then return print(err) end
    f:write('Player: ['..id..'] Placed Scene: ['..text..'] At Coords = '..coords..'\n')
    f:close()
end)