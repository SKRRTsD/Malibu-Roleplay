MRP.Events = MRP.Events or {}
MRP.Events.Total = 0
MRP.Events.Active = {}

function MRP.Events.Trigger(self, event, args, callback)
    local id = MRP.Events.Total + 1
    MRP.Events.Total = id

    id = event .. ":" .. id

    if MRP.Events.Active[id] then return end

    MRP.Events.Active[id] = {cb = callback}
    
    TriggerServerEvent("mrp-events:listenEvent", id, event, args)
end

RegisterNetEvent("mrp-events:listenEvent")
AddEventHandler("mrp-events:listenEvent", function(id, data)
    local ev = MRP.Events.Active[id]
    
    if ev then
        ev.cb(data)
        MRP.Events.Active[id] = nil
    end
end)

