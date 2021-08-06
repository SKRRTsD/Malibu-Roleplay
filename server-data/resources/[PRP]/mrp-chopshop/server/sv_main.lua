RegisterServerEvent('mrp-chopshop:serverPay')
AddEventHandler('mrp-chopshop:serverPay', function()
    local src = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(src)
    local amount = math.random(80, 150)
    user:addMoney(amount)
end)


RegisterServerEvent("mrp-chopshop:chopCostMoney")
AddEventHandler("mrp-chopshop:chopCostMoney", function(money)
    local pSrc = source
    local user = exports["mrp-core"]:getModule("Player"):GetUser(pSrc)
    if (tonumber(user:getCash()) >= money) then
        user:removeMoney(money)
        TriggerClientEvent("mrp-chopshop:startChopshop", pSrc)
    else
        TriggerClientEvent("DoLongHudText", pSrc, "You need $"..money, 2)
    end
end)
