RegisterServerEvent('prp-chopshop:serverPay')
AddEventHandler('prp-chopshop:serverPay', function()
    local src = source
    local user = exports["prp-core"]:getModule("Player"):GetUser(src)
    local amount = math.random(80, 150)
    user:addMoney(amount)
end)


RegisterServerEvent("prp-chopshop:chopCostMoney")
AddEventHandler("prp-chopshop:chopCostMoney", function(money)
    local pSrc = source
    local user = exports["prp-core"]:getModule("Player"):GetUser(pSrc)
    if (tonumber(user:getCash()) >= money) then
        user:removeMoney(money)
        TriggerClientEvent("prp-chopshop:startChopshop", pSrc)
    else
        TriggerClientEvent("DoLongHudText", pSrc, "You need $"..money, 2)
    end
end)
