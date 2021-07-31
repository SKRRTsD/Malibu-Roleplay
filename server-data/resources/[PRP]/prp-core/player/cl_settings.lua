PRP.SettingsData = PRP.SettingsData or {}
PRP.Settings = PRP.Settings or {}

PRP.Settings.Current = {}
-- Current bind name and keys
PRP.Settings.Default = {
  ["tokovoip"] = {
    ["stereoAudio"] = true,
    ["localClickOn"] = true,
    ["localClickOff"] = true,
    ["remoteClickOn"] = true,
    ["remoteClickOff"] = true,
    ["clickVolume"] = 0.8,
    ["radioVolume"] = 0.8,
    ["phoneVolume"] = 0.8,
    ["releaseDelay"] = 200
  },
  ["hud"] = {

  }

}


function PRP.SettingsData.setSettingsTable(settingsTable, shouldSend)
  if settingsTable == nil then
    PRP.Settings.Current = PRP.Settings.Default
    TriggerServerEvent('prp-core:sv:player_settings_set',PRP.Settings.Current)
    PRP.SettingsData.checkForMissing()
  else
    if shouldSend then
      PRP.Settings.Current = settingsTable
      TriggerServerEvent('prp-core:sv:player_settings_set',PRP.Settings.Current)
      PRP.SettingsData.checkForMissing()
    else
       PRP.Settings.Current = settingsTable
       PRP.SettingsData.checkForMissing()
    end
  end

  TriggerEvent("event:settings:update",PRP.Settings.Current)

end

function PRP.SettingsData.setSettingsTableGlobal(self, settingsTable)
  PRP.SettingsData.setSettingsTable(settingsTable,true);
end

function PRP.SettingsData.getSettingsTable()
    return PRP.Settings.Current
end

function PRP.SettingsData.setVarible(self,tablename,atrr,val)
  PRP.Settings.Current[tablename][atrr] = val
  TriggerServerEvent('prp-core:sv:player_settings_set',PRP.Settings.Current)
end

function PRP.SettingsData.getVarible(self,tablename,atrr)
  return PRP.Settings.Current[tablename][atrr]
end

function PRP.SettingsData.checkForMissing()
  local isMissing = false

  for j,h in pairs(PRP.Settings.Default) do
    if PRP.Settings.Current[j] == nil then
      isMissing = true
      PRP.Settings.Current[j] = h
    else
      for k,v in pairs(h) do
        if  PRP.Settings.Current[j][k] == nil then
           PRP.Settings.Current[j][k] = v
           isMissing = true
        end
      end
    end
  end
  

  if isMissing then
    TriggerServerEvent('prp-core:sv:player_settings_set',PRP.Settings.Current)
  end


end

RegisterNetEvent("prp-core:cl:player_settings")
AddEventHandler("prp-core:cl:player_settings", function(settingsTable)
  PRP.SettingsData.setSettingsTable(settingsTable,false)
end)


RegisterNetEvent("prp-core:cl:player_reset")
AddEventHandler("prp-core:cl:player_reset", function(tableName)
  if PRP.Settings.Default[tableName] then
      if PRP.Settings.Current[tableName] then
        PRP.Settings.Current[tableName] = PRP.Settings.Default[tableName]
        PRP.SettingsData.setSettingsTable(PRP.Settings.Current,true)
      end
  end
end)