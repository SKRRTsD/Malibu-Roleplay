local DISCORD_WEBHOOK5 = "https://discord.com/api/webhooks/870496791693504533/mdsgdlXOI4i6usSx-esBTRbz2TVr61Ju2k38Phb1fEb6KxBFm5DEvGbX8Zcmw-UkPAOt"
local DISCORD_NAME5 = "Oxy Run Logs"

local STEAM_KEY = "0C007CC382AB06D1D99D9B45EC3924B1"
local DISCORD_IMAGE = "https://i.imgur.com/zviw6oW.png" -- default is FiveM logo

PerformHttpRequest(DISCORD_WEBHOOK5, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME5, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })

local cachedData = {}

RegisterServerEvent('oxydelivery:server')
AddEventHandler('oxydelivery:server', function(money)
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(source)

	if user:getCash() >= money then
        user:removeMoney(money)

		TriggerClientEvent("oxydelivery:startDealing", source)
    else
        TriggerClientEvent('DoLongHudText', source, 'You dont have enough for this', 2)
	end
end)

RegisterServerEvent('mission:finished')
AddEventHandler('mission:finished', function(type, money)    
    local src = source
    local player = GetPlayerName(source)
    local user = exports["mrp-core"]:getModule("Player"):GetUser(source)
    if money ~= nil then
        user:addMoney(money)
        if money > 300 then
            sendToDiscord5("Oxy Run Logs", "Player ID: ".. source ..", Steam: ".. player ..",  Just Received $".. money .." From Selling Hunting.")
    	end
	end
end)

RegisterServerEvent('drugdelivery:server')
AddEventHandler('drugdelivery:server', function(money)
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(source)

	if user:getCash() >= money then
        user:removeMoney(money)
		
		TriggerClientEvent("drugdelivery:startDealing", source)
    else
        TriggerClientEvent('DoLongHudText', source, 'You dont have enough money.', 2)
	end
end)

local counter = 0
RegisterServerEvent('delivery:status')
AddEventHandler('delivery:status', function(status)
    if status == -1 then
        counter = 0
    elseif status == 1 then
        counter = 2
    end
    TriggerClientEvent('delivery:deliverables', -1, counter, math.random(1,14))
end)



local activechop = {}
local newList = {}

function makenewlist()
    for i = 1, 5 do
        table.insert(newList, {["id"] = math.random(1, 118), ["rarity"] = math.random(1, 15), ["resolved"] = false})
    end
end

local timer = 60

function updatetimer()
    if timer > 0 then
        timer = timer - 1
        TriggerClientEvent("chop:CurrentCarList", -1, newList, timer)
    else
        newList = {}
        makenewlist()
        timer = 60
        TriggerClientEvent("chop:CurrentCarList", -1, newList, timer)
    end
end

RegisterServerEvent('request:chopshop')
AddEventHandler('request:chopshop', function()
    TriggerClientEvent("chop:CurrentCarList", -1, newList, timer)
end)

RegisterServerEvent('chopshop:removevehicle')
AddEventHandler('chopshop:removevehicle', function(vehicleid, plate, value)
    newList[vehicleid]["resolved"] = true
    TriggerClientEvent("chop:CurrentCarListRemove", -1, vehicleid)
    TriggerClientEvent("keys:remove", source, plate)
    TriggerClientEvent("payment:chopshopscrap", source, newList[vehicleid]["rarity"])
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    makenewlist()
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        updatetimer()
    end
end)

function sendToDiscord5(name, message, color)
    local connect = {
      {
        ["color"] = color,
        ["title"] = "**".. name .."**",
        ["description"] = message,
      }
    }
    PerformHttpRequest(DISCORD_WEBHOOK5, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME5, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end