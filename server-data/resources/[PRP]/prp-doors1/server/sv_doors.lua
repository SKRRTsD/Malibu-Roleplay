character = {}

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        TriggerClientEvent('mrp-doors:states',-1,mrp_DOORS)
    end
end)

RegisterNetEvent('mrp-doors:changeLock-status')
AddEventHandler('mrp-doors:changeLock-status', function(doorId,state)
    mrp_DOORS[doorId]["lock"] = state
    if doorId == 93 or doorId == 94 then
        mrp_DOORS[doorId]["lock"] = false
        mrp_DOORS[doorId]["forceUnlocked"] = true
    end
    Wait(1000)
    TriggerClientEvent('mrp-doors:changeLock-status',-1,tonumber(doorId),state,true)
end)

RPC.register("GetEmploymentInformation", function(source, data)
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = data.character.id
    local employment = {}
    local query = "SELECT * FROM character_passes WHERE cid = ?"
    local result = Await(SQL.execute(query, cid)) 
    for k, v in ipairs(result) do
          employment[v.pass_type] = {}
        employment[v.pass_type].code = v.pass_type
        employment[v.pass_type]["permissions"] = {"property_keys"}
    end
    return true, employment
end)

RPC.register("IsEmployedAtBusiness", function(source, data)
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = data.character.id
    local business = data.business.id
    local res = false

    local query = "SELECT * FROM character_passes WHERE cid = ?"
    local result = Await(SQL.execute(query, cid)) 
    for k, v in ipairs(result) do
          if v.pass_type == business then
            res = true
        end
    end
    return res
end)


RPC.register("getCharacterPasses", function(source)
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = char.id
    local res = {}

    local query = "SELECT * FROM character_passes WHERE cid = ?"
    local result = Await(SQL.execute(query, cid)) 
    if result and result[1] ~= nil then res = result end
    return res
end)