PRP.Users = PRP.Users or {}
PRP.Player = PRP.Player or {}

function PRP.Player.GetUser(self, id)
    return PRP.Users[id] and PRP.Users[id] or false
end

function PRP.Player.GetUsers(self)
    local tmp = {}

    for k, v in pairs(PRP.Users) do
        tmp[#tmp+1]= k
    end

    return tmp
end

local function GetUser(user)
    return PRP.Users[user.source]
end

local function AddMethod(player)
    function player.getVar(self, var)
        return GetUser(self)[var]
    end

    function player.setVar(self, var, data)
        GetUser(self)[var] = data
    end
    
    function player.networkVar(self, var, data)
        self:setVar(var, data)
        TriggerClientEvent("mrp-core:networkVar", GetUser(self):getVar("source"), var, data)
    end

    function player.getRank(self)
        return GetUser(self).rank
    end

    function player.setRank(self, rank)
        GetUser(self).rank = rank
        self:networkVar("rank", rank)
    end

    function player.setCharacters(self, data)
        GetUser(self).characters = data
    end

    function player.setCharacter(self, data)
        GetUser(self).character = data
    end

    function player.getCasino(self)
        return GetUser(self).character.casino
    end

    function player.getCash(self)
        return GetUser(self).character.cash
    end

    function player.getBalance(self)
        return GetUser(self).character.bank
    end

    function player.getDirtyMoney(self)
        return GetUser(self).character.dirty_money
    end

    function player.getGangType(self)
        return GetUser(self).character.gang_type
    end

    function player.getStressLevel(self)
        return GetUser(self).character.stress_level
    end

    function player.getJudgeType(self)
        return GetUser(self).character.judge_type
    end

    function player.alterDirtyMoney(self, amt)
        local characterId = GetUser(self.character.id)

        GetUser(self).character.dirty_money = amt

        PRP.DB:UpdateCharacterDirtyMoney(GetUser(self), characterId, amt, function(updatedMoney, err)
            if updatedMoney then
                --We are good here.
            end
        end)
    end

    function player.alterStressLevel(self, amt)
        local characterid = GetUser(self).character.id

        GetUser(self).character.stress_level = amt

        PRP.DB:UpdateCharacterStressLevel(GetUser(self), characterId, amt, function(updatedMoney, err)
            if updatedMoney then
                --We are good here.
            end
        end)
    end

    function player.resetDirtyMoney(self)
        local characterid = GetUser(self).character.id

        GetUser(self).character.dirty_money = 0

        PRP.DB:UpdateCharacterDirtyMoney(GetUser(self), characterId, 0, function(updatedMoney, err)
            if updatedMoney then
                --We are good here.
            end
        end)
    end

    function player.addCasino(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local casino = GetUser(self):getCasino() + amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.casino = casino

        PRP.DB:UpdateCharacterCasino(GetUser(self), characterId, casino, function(updatedMoney, err) 
            if updatedMoney then
                TriggerClientEvent("banking:addCasino", GetUser(self).source, amt)
                TriggerClientEvent("banking:updateCasino", GetUser(self).source, GetUser(self):getCasino(), amt)
                exports["mrp-core"]:AddLog("Casino Chips Added", GetUser(self), "Money added to user, amount: " .. tostring(amt))
            end
        end)
    end

    function player.removeCasino(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local casino = GetUser(self):getCasino() - amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.casino = GetUser(self).character.casino - amt


            PRP.DB:UpdateCharacterCasino(GetUser(self), characterId, casino, function(updatedMoney, err) 
                if updatedMoney then
                    TriggerClientEvent("banking:removeCasino", GetUser(self).source, amt)
                    TriggerClientEvent("banking:updateCasino", GetUser(self).source, GetUser(self):getCasino(), amt)
                    exports["mrp-core"]:AddLog("Casino Removed", GetUser(self), "Money removed from user, amount: " .. tostring(amt))
                end
            end)
    end

    function player.addMoney(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local cash = GetUser(self):getCash() + amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.cash = cash

        PRP.DB:UpdateCharacterMoney(GetUser(self), characterId, cash, function(updatedMoney, err) 
            if updatedMoney then
                TriggerClientEvent("banking:addCash", GetUser(self).source, amt)
                TriggerClientEvent("banking:updateCash", GetUser(self).source, GetUser(self):getCash(), amt)
                exports["mrp-core"]:AddLog("Cash Added", GetUser(self), "Money added to user, amount: " .. tostring(amt))
            end
        end)
    end

    function player.removeMoney(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local cash = GetUser(self):getCash() - amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.cash = GetUser(self).character.cash - amt


            PRP.DB:UpdateCharacterMoney(GetUser(self), characterId, cash, function(updatedMoney, err) 
                if updatedMoney then
                    TriggerClientEvent("banking:removeCash", GetUser(self).source, amt)
                    TriggerClientEvent("banking:updateCash", GetUser(self).source, GetUser(self):getCash(), amt)
                    exports["mrp-core"]:AddLog("Cash Removed", GetUser(self), "Money removed from user, amount: " .. tostring(amt))
                end
            end)
    end

    
    function player.removeBank(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local bank = GetUser(self):getBalance() - amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.bank = GetUser(self).character.bank - amt

        PRP.DB:UpdateCharacterBank(GetUser(self), characterId, bank, function(updatedMoney, err) 
            if updatedMoney then
                TriggerClientEvent("banking:removeBalance", GetUser(self).source, amt)
                TriggerClientEvent("banking:updateBalance", GetUser(self).source, GetUser(self):getBalance(), amt)
                exports["mrp-core"]:AddLog("Bank Removed", GetUser(self), "Bank removed from user, amount: " .. tostring(amt))
            end
        end)
    end

    function player.addBank(self, amt)
        if not amt or type(amt) ~= "number" then return end
        local bank = GetUser(self):getBalance() + amt
        local characterId = GetUser(self).character.id
        local src = GetUser(self).source

        amt = math.floor(amt)

        GetUser(self).character.bank = bank

        PRP.DB:UpdateCharacterBank(GetUser(self), characterId, bank, function(updatedMoney, err) 
            if updatedMoney then
                TriggerClientEvent("banking:addBalance", GetUser(self).source, amt)
                TriggerClientEvent("banking:updateBalance", GetUser(self).source, GetUser(self):getBalance(), amt)
                exports["mrp-core"]:AddLog("Bank Added", GetUser(self), "Bank added to user, amount: " .. tostring(amt))
            end
        end)
    end

    function player.getNumCharacters(self)
        if not GetUser(self).charactersLoaded or not GetUser(self).characters then return 0 end
        return #GetUser(self).characters
    end

    function player.ownsCharacter(self, id)
        if not GetUser(self).charactersLoaded or not GetUser(self).characters or GetUser(self):getNumCharacters() <= 0 then return false end

        for k,v in ipairs(GetUser(self).characters) do 
            if v.id == id then return true end 
        end

        return false
    end

    function player.getGender(self)
        if not GetUser(self).charactersLoaded or not GetUser(self).characters or not GetUser(self).characterLoaded then return false end

        return GetUser(self).character.gender
    end
        
    function player.getCharacters(self)
        return GetUser(self).characters
    end

    function player.getCharacter(self, id)
        if not GetUser(self).charactersLoaded or not GetUser(self).characters or GetUser(self):getNumCharacters() <= 0 then return false end
        if not GetUser(self):ownsCharacter(id) then return false end

        for k,v in ipairs(GetUser(self).characters) do 
            if v.id == id then return v end
        end

        return false
    end

    function player.getCurrentCharacter(self)
        if not GetUser(self).charactersLoaded or not GetUser(self).characterLoaded or GetUser(self):getNumCharacters() <= 0 then return false end
        return GetUser(self).character
    end

    return player
end

    local function CreatePlayer(src)
        local self = {}

        self.source = src
        self.name = GetPlayerName(src)
        self.hexid = PRP.Util:GetHexId(src)
        
        if not self.hexid then
            DropPlayer(src, "Error fetching steamid")
            return
        end

        self.comid = PRP.Util:HexIdToComId(self.hexid)
        self.steamid = PRP.Util:HexIdToSteamId(self.hexid)
        self.license = PRP.Util:GetLicense(src)
        self.ip = GetPlayerEP(src)
        self.rank = "user"

        self.characters = {}
        self.character = {}

        self.charactersLoaded = false
        self.characterLoaded = false

        local methods = AddMethod(self)

        PRP.Users[src] = methods

        return methods
    end


function PRP.Player.CreatePlayer(self, src, recrate)
    if recreate then PRP.Users[src] = nil end
    
    if PRP.Users[src] then return PRP.Users[src] end

    return CreatePlayer(src)
end

local pos = {}
RegisterServerEvent('mrp-core:updatecoords')
AddEventHandler('mrp-core:updateCoords', function(x,y,z)
    local src = source
    pos[src] = {x,y,z}
end)

RegisterServerEvent("retreive:licenes:server")
AddEventHandler("retreive:licenes:server", function()
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local characterId = user:getVar("character").id
    exports.ghmattimysql:execute('SELECT * FROM user_licenses WHERE owner = ? AND type = ?', {characterId, "Firearm"}, function(callback)
        TriggerClientEvent("wtflols", src, callback[1].status)
    end)
end)


RegisterServerEvent("retreive:jail")
AddEventHandler("retreive:jail", function(cid)
    local src = source
    exports.ghmattimysql:execute("SELECT `jail_time` FROM `characters` WHERE id = ?", {cid}, function(result)
        if result[1].jail_time >= 1 then
            TriggerClientEvent("beginJail2", src, result[1].jail_time, true)
        end
    end)
end)

AddEventHandler("playerDropped", function(reason)
    local src = source
    if reason == nil then reason = "Unknown" end
    local user = PRP.Player:GetUser(src)
    local posE = json.encode(pos[src])
    pos[src] = nil

    local pUser = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local char = pUser:getVar("character")
    local userjob = user:getVar("job") or "Unemployed"
    if userjob == "police" or userjob == "ems" then
		TriggerEvent("duty:reset:number", userjob)
    end

    PRP.Users[src] = nil

    TriggerEvent('mrp-core:playerDropped', src, user)
end)

