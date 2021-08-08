local robbableItems = {
  [1] = {chance = 10, id = 0, quantity = math.random(25, 250)},
  [2] = {chance = 5, id = 'plastic', quantity = math.random(1, 2)},
  [3] = {chance = 13, id = 'pistolammo', quantity = 1},
  [4] = {chance = 30, id = 'rollcash', quantity = math.random(5,10)},
  [5] = {chance = 8, id = 'oxy', quantity = math.random(1,6)},
  [6] = {chance = 35, id = 'band', quantity = math.random(1,2)},
  [7] = {chance = 45, id = 'thermite', quantity = math.random(1,5)},
  [8] = {chance = 65, id = 'usbdevice', quantity = 1},
  [9] = {chance = 75, id = 'fcadrive', quantity = 1},
  [10] = {chance = 12, id = 'bobross', quantity = 1},
  [11] = {chance = 13, id = 'nitendoswitch', quantity = 1},
  [12] = {chance = 90, id = '3218215474', quantity = 1},
  [13] = {chance = 125, id = '-771403250', quantity = 1},
  [14] = {chance = 75, id = 'stolen2ctchain', quantity = math.random(1,10)},
  [15] = {chance = 80, id = 'stolen8ctchain', quantity = math.random(1,5)},
  [16] = {chance = 85, id = 'stolen10ctchain', quantity = math.random(1,3)},
  [17] = {chance = 90, id = 'goldcoin', quantity = 1},
  [18] = {chance = 2, id = 'gamingkeyboard', quantity = 1},
  [19] = {chance = 2, id = 'gamingmouse', quantity = 1},
  [20] = {chance = 7, id = 'gamingpc', quantity = 1},
  [21] = {chance = 5, id = 'ps5', quantity = 1},
  [22] = {chance = 6, id = 'rolexwatch', math.random(1,5)},
  [23] = {chance = 7, id = 'goldbar', math.random(1,4)},
  [24] = {chance = 7, id = 'anime', math.random(1,3)},
  [25] = {chance = 36, id = '453432689', 1},
  [26] = {chance = 15, id = 'joint', math.random(1,3)},
  [27] = {chance = 18, id = 'Boombox', 1},
 }
 
 RegisterServerEvent('houseRobberies:removeLockpick')
 AddEventHandler('houseRobberies:removeLockpick', function()
  local source = tonumber(source)
  local user = exports["mrp-core"]:getModule("Player"):GetUser(source)
  TriggerClientEvent('inventory:removeItem', source, 'lockpick', 1)
  TriggerClientEvent('DoLongHudText',  source, 'The lockpick bent out of shape' , 1)
 end)
 
 RegisterServerEvent('houseRobberies:giveMoney')
 AddEventHandler('houseRobberies:giveMoney', function()
  local source = tonumber(source)
  local user = exports["mrp-core"]:getModule("Player"):GetUser(source)
  local cash = math.random(500, 670)
  user:addMoney(cash)
  TriggerClientEvent('DoLongHudText',  source, 'You found a $'..cash , 1)
  TriggerClientEvent("robbery:register:finishedLockpick", source)
  TriggerClientEvent("houseRobberies:reset", source)
 end)
 
 
 RegisterServerEvent('houseRobberies:searchItem')
 AddEventHandler('houseRobberies:searchItem', function()
  local source = tonumber(source)
  local item = {}
  local user = exports["mrp-core"]:getModule("Player"):GetUser(source)
  local gotID = {}
 
  for i=1, math.random(1, 2) do
   item = robbableItems[math.random(1, #robbableItems)]
   if math.random(1, 100) >= item.chance then
     if tonumber(item.id) == 0 and not gotID[item.id] then
       gotID[item.id] = true
       user:addMoney(item.quantity)
       TriggerClientEvent('DoLongHudText',  source, 'You found $'..item.quantity , 1)
     elseif not gotID[item.id] then
       gotID[item.id] = true
       TriggerClientEvent('player:receiveItem', source, item.id, item.quantity)
       TriggerClientEvent('DoLongHudText', source, 'You found '..item.id, 1)
     end
   else
     TriggerClientEvent('DoLongHudText', source, 'You found nothing', 1)
     end
   end
 end)
 