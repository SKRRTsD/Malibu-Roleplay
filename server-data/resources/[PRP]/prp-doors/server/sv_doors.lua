local steamIds = {
    ["steam:11000010ff9502c"] = true, -- Wachukulit
    ["steam:11000060c63fb2a"] = true, -- Ayo
    ["steam:110000118e95cb4"] = true, -- Kalxie
}

RegisterServerEvent('prp-doors:alterlockstate2')
AddEventHandler('prp-doors:alterlockstate2', function()
    PRP.DoorCoords[10]["lock"] = 0
    PRP.DoorCoords[11]["lock"] = 0
    PRP.DoorCoords[12]["lock"] = 0
    PRP.DoorCoords[39]["lock"] = 0
    PRP.DoorCoords[40]["lock"] = 0
    PRP.DoorCoords[41]["lock"] = 0
    PRP.DoorCoords[42]["lock"] = 0
    PRP.DoorCoords[44]["lock"] = 0
    PRP.DoorCoords[45]["lock"] = 0
    PRP.DoorCoords[46]["lock"] = 0
    PRP.DoorCoords[47]["lock"] = 0
    PRP.DoorCoords[48]["lock"] = 0
    PRP.DoorCoords[49]["lock"] = 0
    PRP.DoorCoords[50]["lock"] = 0
    PRP.DoorCoords[51]["lock"] = 0
    PRP.DoorCoords[52]["lock"] = 0
    PRP.DoorCoords[53]["lock"] = 0
    PRP.DoorCoords[54]["lock"] = 0
    PRP.DoorCoords[55]["lock"] = 0
    PRP.DoorCoords[56]["lock"] = 0

    TriggerClientEvent('prp-doors:alterlockstateclient', source, PRP.DoorCoords)

end)

RegisterServerEvent('prp-doors:alterlockstate')
AddEventHandler('prp-doors:alterlockstate', function(alterNum)
    PRP.alterState(alterNum)
end)

RegisterServerEvent('prp-doors:ForceLockState')
AddEventHandler('prp-doors:ForceLockState', function(alterNum, state)
    PRP.DoorCoords[alterNum]["lock"] = state
    TriggerClientEvent('erp:Door:alterState', -1, alterNum, state)
end)

RegisterServerEvent('prp-doors:requestlatest')
AddEventHandler('prp-doors:requestlatest', function()
    local src = source 
    local steamcheck = GetPlayerIdentifiers(source)[1]
    if steamIds[steamcheck] then
        TriggerClientEvent('doors:HasKeys',src,true)
    end
    TriggerClientEvent('prp-doors:alterlockstateclient', source,PRP.DoorCoords)
end)

function isDoorLocked(door)
    if PRP.DoorCoords[door].lock == 1 then
        return true
    else
        return false
    end
end