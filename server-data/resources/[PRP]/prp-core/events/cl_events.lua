PRP.Events = PRP.Events or {}
PRP.Events.Total = 0
PRP.Events.Active = {}

function PRP.Events.Trigger(self, event, args, callback)
    local id = PRP.Events.Total + 1
    PRP.Events.Total = id

    id = event .. ":" .. id

    if PRP.Events.Active[id] then return end

    PRP.Events.Active[id] = {cb = callback}
    
    TriggerServerEvent("prp-events:listenEvent", id, event, args)
end

RegisterNetEvent("prp-events:listenEvent")
AddEventHandler("prp-events:listenEvent", function(id, data)
    local ev = PRP.Events.Active[id]
    
    if ev then
        ev.cb(data)
        PRP.Events.Active[id] = nil
    end
end)

