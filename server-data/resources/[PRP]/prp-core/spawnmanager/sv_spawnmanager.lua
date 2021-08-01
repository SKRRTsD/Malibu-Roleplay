PRP.SpawnManager = {}

function OnPlayerConnecting(name, setKickReason, deferrals)
    deferrals.defer();
    local pSrc = source;
    Citizen.Wait(100);
    local pName = GetPlayerName(pSrc);
    local pDiscord = GetPlayerIdentifiers(pSrc)[3];
    local pSteam = GetPlayerIdentifiers(pSrc)[1];
    if pName and pDiscord and pSteam ~= nil then
        exports.ghmattimysql:execute("SELECT * FROM user_bans WHERE steam_id = ? AND discord_id = ? AND steam_name = ?", {pSteam, pDiscord, pName}, function(data)
            if data[1] then
                local reason = data[1].reason
                if reason == "" then
                    reason = "No Reason Specified"
                end
                print("^1[BANNED PLAYER] Player " .. pName .. " tried to join, but was banned for: " .. reason .. "^0");
                deferrals.done("You have been permanently banned | Reason: " .. string.upper(reason));
                CancelEvent();
                return;
            else
                deferrals.done();

                if GetConvarInt('logs_enabled', 1) == 1 then
                    local LogInfo =  pName.. " is loading into the server"
                    exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871354311794389012/9kYnAuOUcNbYIqvnPYjlb5MDmPt5ZKxMOZ2-4ukJTkx9yHYa8SDG9nzc5_1lBFNk6kM-", pSrc, "Player Joining", "", LogInfo)
                end
            end
        end)
    end
end




AddEventHandler("playerConnecting", OnPlayerConnecting)
