PRP.Events = PRP.Events or {}
PRP.Events.Registered = PRP.Events.Registered or {}

RegisterServerEvent("prp-events:listenEvent")
AddEventHandler("prp-events:listenEvent", function(id, name, args)
    local src = source

    if not PRP.Events.Registered[name] then return end

    PRP.Events.Registered[name].f(PRP.Events.Registered[name].mod, args, src, function(data)
        TriggerClientEvent("prp-events:listenEvent", src, id, data)
    end)
end)

function PRP.Events.AddEvent(self, module, func, name)
    PRP.Events.Registered[name] = {
        mod = module,
        f = func
    }
end



