PRP.Player = PRP.Player or {}
PRP.LocalPlayer = PRP.LocalPlayer or {}

local function GetUser()
    return PRP.LocalPlayer
end

function PRP.LocalPlayer.setVar(self, var, data)
    GetUser()[var] = data
end

function PRP.LocalPlayer.getVar(self, var)
    return GetUser()[var]
end

function PRP.LocalPlayer.setCurrentCharacter(self, data)
    if not data then return end
    GetUser():setVar("character", data)
end

function PRP.LocalPlayer.getCurrentCharacter(self)
    return GetUser():getVar("character")
end

RegisterNetEvent("mrp-core:networkVar")
AddEventHandler("mrp-core:networkVar", function(var, val)
    PRP.LocalPlayer:setVar(var, val)
end)

