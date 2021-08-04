MRP.Events = MRP.Events or {}
MRP.Events.Registered = MRP.Events.Registered or {}

RegisterServerEvent("mrp-events:listenEvent")
AddEventHandler("mrp-events:listenEvent", function(id, name, args)
    local src = source

    if not MRP.Events.Registered[name] then return end

    MRP.Events.Registered[name].f(MRP.Events.Registered[name].mod, args, src, function(data)
        TriggerClientEvent("mrp-events:listenEvent", src, id, data)
    end)
end)

function MRP.Events.AddEvent(self, module, func, name)
    MRP.Events.Registered[name] = {
        mod = module,
        f = func
    }
end



