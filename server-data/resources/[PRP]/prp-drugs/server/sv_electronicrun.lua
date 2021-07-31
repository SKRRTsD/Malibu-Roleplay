RegisterServerEvent('electronicrunstart')
AddEventHandler('electronicrunstart', function()
local src = source
local user = exports["prp-core"]:getModule("Player"):GetUser(src)
    user:removeMoney(550)
end)