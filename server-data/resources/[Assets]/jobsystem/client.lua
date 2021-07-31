---------------------------------- VAR ----------------------------------
isCop = false
curJob = nil

local jobs = {
  {name="Unemployed", id="unemployed"},
  {name="Tow Truck Driver", id="towtruck"},  
  {name="Taxi Driver", id="taxi"},
  {name="Delivery Job", id="trucker"},
  {name="Entertainer", id = "entertainer"},
  {name="News Reporter", id = "news"},
  {name="Food Truck", id = "foodtruck"},
    --{name="EMS", id="ems"},
}


function menuJobs()
  MenuTitle = "Jobs"
  ClearMenu()
  for _, item in pairs(jobs) do
    local nameJob = item.name
    local idJob = item.id
    Menu.addButton(nameJob,"changeJob",idJob)
  end
end

function changeJob(id)
  TriggerServerEvent("jobssystem:jobs", id)
end

---------------------------------- CITIZEN ----------------------------------
local inGurgle = false
RegisterNetEvent('event:control:jobSystem')
AddEventHandler('event:control:jobSystem', function(useID)
  if useID == 1 then
    TriggerServerEvent("server:paySlipPickup")
    Citizen.Wait(1000)

  elseif useID == 2 and not inGurgle then
    TriggerEvent("Gurgle:open")
    inGurgle = true

  elseif useID == 3 then
    menuJobs()
    Menu.hidden = not Menu.hidden 

  end
end)






RegisterNetEvent('enableGurgleText')
AddEventHandler('enableGurgleText', function()
  inGurgle = false
end)
RegisterNetEvent('jobssystem:getJob')
AddEventHandler('jobssystem:getJob', function(cb)
  cb(curJob)
end)

RegisterNetEvent('jobssystem:updateJob')
AddEventHandler('jobssystem:updateJob', function(nameJob)
  if nameJob ~= curJob then
    TriggerEvent('clearJobBlips')
  end

  local id = PlayerId()
  local playerName = GetPlayerName(id)

  SendNUIMessage({
    updateJob = true,
    job = nameJob,
    player = playerName
  })

  curJob = nameJob

  if nameJob == "unemployed" then
    TriggerEvent('nowUnemployed')
  end

  if nameJob == "news" then
    TriggerEvent("DoLongHudText", "Press H to pull item news items.")
    TriggerEvent("DoLongHudText", "Press H to pull item news items.")
  end
  
end)

RegisterNetEvent('jobssystem:current')
AddEventHandler('jobssystem:current', function(cb)
  LocalPlayer = exports["prp-core"]:getModule("LocalPlayer")
  cb(LocalPlayer:getVar("job"))
end)

local PaycheckSpot, called = false, false

Citizen.CreateThread(function()
	exports["prp-polyzone"]:AddBoxZone("paycheck_collect", vector3(-1082.48, -248.09, 37.76), 1.15, 2, {
    name="paycheck_collect",
    heading=30,
    --debugPoly=true,
    minZ=36.76,
    maxZ=38.76
  }) 

end)

RegisterNetEvent('prp-polyzone:enter')
AddEventHandler('prp-polyzone:enter', function(name)
  if name == "paycheck_collect" then
    PaycheckSpot = true
    TriggerEvent('prp-textui:ShowUI', 'show', ("[E] %s"):format("Collect Paycheck")) 
    PaycheckFunction()
  end
end)

RegisterNetEvent('prp-polyzone:exit')
AddEventHandler('prp-polyzone:exit', function(name)
  if name == "paycheck_collect" then
    PaycheckSpot = false
  end
  TriggerEvent('prp-textui:HideUI')
end)

function PaycheckFunction()
  Citizen.CreateThread(function()
    while PaycheckSpot do
      Citizen.Wait(5)
      if IsControlJustReleased(0, 38) then
        local finished = exports["prp-taskbar"]:taskBar(2000,"Collecting Your Paycheck")
        if finished == 100 then
          if called == false then
            called = true
            TriggerServerEvent("paycheck:collect", exports["prp_manager"]:isPed("cid"))
            Citizen.Wait(500)
            called = false
          end
        end
      end
    end
  end)
end
