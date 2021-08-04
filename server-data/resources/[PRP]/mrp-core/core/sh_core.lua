PRP.Core = PRP.Core or {}

function PRP.Core.ConsoleLog(self, msg, mod)
    if not tostring(msg) then return end
    if not tostring(mod) then mod = "No Module" end
    
    local pMsg = string.format("[PRP LOG - %s] %s", mod, msg)
    if not pMsg then return end

end

RegisterNetEvent("mrp-core:consoleLog")
AddEventHandler("mrp-core:consoleLog", function(msg, mod)
    PRP.Core:ConsoleLog(msg, mod)
end)

function getModule(module)
    if not PRP[module] then 
      --  print("Warning: '" .. tostring(module) .. "' module doesn't exist") 
        return false 
    end
    return PRP[module]
end

function addModule(module, tbl)
    if PRP[module] then 
       -- print("Warning: '" .. tostring(module) .. "' module is being overridden") 
    end
    PRP[module] = tbl
end

PRP.Core.ExportsReady = false

function PRP.Core.WaitForExports(self)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if exports and exports["mrp-core"] then
                TriggerEvent("mrp-core:exportsReady")
                PRP.Core.ExportsReady = true
                return
            end
        end
    end)
end

exports("getModule", getModule)
exports("addModule", addModule)

PRP.Core:WaitForExports()

