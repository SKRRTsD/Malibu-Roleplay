
-- Citizen.CreateThread(function()
--     Citizen.Wait(1)
--     while true do
--         local ped = GetPlayerPed(-1)
--         local pos = GetEntityCoords(ped)
--         local inRange = false


--             if Config.BigBanks["pacific"]["isOpened"] then
--                 for k, v in pairs(Config.BigBanks["pacific"]["lockers"]) do
--                     local lockerDist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["lockers"][k].x, Config.BigBanks["pacific"]["lockers"][k].y, Config.BigBanks["pacific"]["lockers"][k].z)
--                     if not Config.BigBanks["pacific"]["lockers"][k]["isBusy"] then
--                         if not Config.BigBanks["pacific"]["lockers"][k]["isOpened"] then
						
--                             if lockerDist < 5 then
--                                 inRange = true
--                                 DrawMarker(27,Config.BigBanks["pacific"]["lockers"][k].x, Config.BigBanks["pacific"]["lockers"][k].y, Config.BigBanks["pacific"]["lockers"][k].z-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
								
--                                 if lockerDist < 1.0 then
--                                     DrawText3Ds(Config.BigBanks["pacific"]["lockers"][k].x, Config.BigBanks["pacific"]["lockers"][k].y, Config.BigBanks["pacific"]["lockers"][k].z, 'Press ~g~E~s~ to crack the safe')   
--                                     if IsControlJustPressed(0, Keys["E"]) then
--                                         if CheckPolice() >= Config.MinimumPacificPolice then
--                                             OpenLocker("pacific", k)
--                                         else
--                                             TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--                                         end
--                                     end
--                                 end
-- 							end	
--                         end
--                     end
--                 end
--             else
-- 			    local dist1 = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][1]["x"], Config.BigBanks["pacific"]["coords"][1]["y"], Config.BigBanks["pacific"]["coords"][1]["z"])
--                 local dist2 = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][2]["x"], Config.BigBanks["pacific"]["coords"][2]["y"], Config.BigBanks["pacific"]["coords"][2]["z"])
--                 local dist3 = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][3]["x"], Config.BigBanks["pacific"]["coords"][3]["y"], Config.BigBanks["pacific"]["coords"][3]["z"])
-- 				local dist4 = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"])
				
-- 				if dist1 < 5 then
--                     inRange = true
--                     DrawMarker(27,Config.BigBanks["pacific"]["coords"][1]["x"], Config.BigBanks["pacific"]["coords"][1]["y"], Config.BigBanks["pacific"]["coords"][1]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
--                 end

--                 if dist1 < 0.5 then
--                     DT1(Config.BigBanks["pacific"]["coords"][1]["x"], Config.BigBanks["pacific"]["coords"][1]["y"], Config.BigBanks["pacific"]["coords"][1]["z"]-0.9, " Use Lockpick")
--                 end

--                 if dist2 < 5 then
--                     inRange = true
--                     DrawMarker(27,Config.BigBanks["pacific"]["coords"][2]["x"], Config.BigBanks["pacific"]["coords"][2]["y"], Config.BigBanks["pacific"]["coords"][2]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
--                 end

--                 if dist2 < 0.5 then
--                     DT1(Config.BigBanks["pacific"]["coords"][2]["x"], Config.BigBanks["pacific"]["coords"][2]["y"], Config.BigBanks["pacific"]["coords"][2]["z"]-0.9, " Use GoldCard")
--                 end

--                 if dist3 < 5 then
--                     inRange = true
--                     DrawMarker(27,Config.BigBanks["pacific"]["coords"][3]["x"], Config.BigBanks["pacific"]["coords"][3]["y"], Config.BigBanks["pacific"]["coords"][3]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
--                 end

--                 if dist3 < 0.5 then
--                     DT1(Config.BigBanks["pacific"]["coords"][3]["x"], Config.BigBanks["pacific"]["coords"][3]["y"], Config.BigBanks["pacific"]["coords"][3]["z"]-0.9, " Use GoldCard")
--                 end
				
-- 				if dist4 < 5 then
--                     inRange = true
--                     DrawMarker(27,Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
--                 end

--                 if dist4 < 0.5 then
--                     DT1(Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"]-0.9, " Use GreenCard")
--                 end
--             end
--             if not inRange then
--                 Citizen.Wait(2500)
--             end
      
--         Citizen.Wait(1)
--     end
-- end)


-- Citizen.CreateThread(function()
--     Citizen.Wait(1)
--     while true do
--         local ped = GetPlayerPed(-1)
--         local pos = GetEntityCoords(ped)
--         local inRange = false
        

--             if Config.BigBanks["pacific"]["isOpened"] then
--                 for k, v in pairs(Config.BigBanks["pacific"]["thermite"]) do
-- 					local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["thermite"][1]["x"], Config.BigBanks["pacific"]["thermite"][1]["y"], Config.BigBanks["pacific"]["thermite"][1]["z"])
-- 					local dist2 = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["thermite"][2]["x"], Config.BigBanks["pacific"]["thermite"][2]["y"], Config.BigBanks["pacific"]["thermite"][2]["z"])
--                     if not Config.BigBanks["pacific"]["thermite"][k]["isBusy"] then
--                         if not Config.BigBanks["pacific"]["thermite"][k]["isOpened"] then
--                             if dist < 5 then
--                                 inRange = true
--                                 DrawMarker(27,Config.BigBanks["pacific"]["thermite"][1]["x"], Config.BigBanks["pacific"]["thermite"][1]["y"], Config.BigBanks["pacific"]["thermite"][1]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
-- 							end	
							
-- 							if dist < 0.5 then
--                                 DT1(Config.BigBanks["pacific"]["thermite"][1]["x"], Config.BigBanks["pacific"]["thermite"][1]["y"], Config.BigBanks["pacific"]["thermite"][1]["z"]-0.9, " Use Thermite")			
--                             end
							
							
-- 							if dist2 < 5 then
--                                 inRange = true
--                                 DrawMarker(27,Config.BigBanks["pacific"]["thermite"][2]["x"], Config.BigBanks["pacific"]["thermite"][2]["y"], Config.BigBanks["pacific"]["thermite"][2]["z"]-0.9, 0, 0, 0, 0, 0, 0, 0.60, 0.60, 0.3, 255,0,0, 60, 0, 0, 2, 0, 0, 0, 0)
-- 							end	

--                             if dist2 < 0.5 then
--                                 DT1(Config.BigBanks["pacific"]["thermite"][2]["x"], Config.BigBanks["pacific"]["thermite"][2]["y"], Config.BigBanks["pacific"]["thermite"][2]["z"]-0.9, " Use Thermite")								
--                             end
--                         end
--                     end
--                 end
--             end
--             if not inRange then
--                 Citizen.Wait(2500)
--             end
     
--         Citizen.Wait(1)
--     end
-- end)

-- function DT1(x,y,z,text)
--     local onScreen,_x,_y=World3dToScreen2d(x,y,z)
--     local px,py,pz=table.unpack(GetGameplayCamCoords())
--     SetTextScale(0.35, 0.35)
--     SetTextFont(4)
--     SetTextProportional(1)
--     SetTextColour(255, 255, 255, 215)

--     SetTextEntry("STRING")
--     SetTextCentre(1)
--     AddTextComponentString(text)
--     DrawText(_x,_y)
--     local factor = (string.len(text)) / 370
--     DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
-- end

-- RegisterNetEvent('prp-robbery:UseBankThermiteOne')
-- AddEventHandler('prp-robbery:UseBankThermiteOne', function(bankId, lockerId)
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
-- 	local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["thermite"][1]["x"], Config.BigBanks["pacific"]["thermite"][1]["y"], Config.BigBanks["pacific"]["thermite"][1]["z"])
-- 	if bankId == closestBank then
--     if dist < 1.5 then
-- 		if CheckPolice() >= Config.MinimumPacificPolice then
-- 			if exports['prp-inventory']:hasEnoughOfItem('thermite', 1) then
--                     if exports["prp-thermite"]:startGame(15,2,10,500) then
-- 				    TriggerEvent('inventory:removeItem',"thermite", 1)

--                     TriggerEvent("attachItem","minigameThermite")

--                     RequestAnimDict("weapon@w_sp_jerrycan")
--                     while ( not HasAnimDictLoaded( "weapon@w_sp_jerrycan" ) ) do
--                         Wait(10)
--                     end
-- 					FreezeEntityPosition(ped, true)
--                     Wait(100)
--                     TaskPlayAnim(GetPlayerPed(-1),"weapon@w_sp_jerrycan","fire",2.0, -8, -1,49, 0, 0, 0, 0)
--                     Wait(5000)
--                     TaskPlayAnim(GetPlayerPed(-1),"weapon@w_sp_jerrycan","fire",2.0, -8, -1,49, 0, 0, 0, 0)
--                     TriggerEvent("destroyProp")
-- 					FreezeEntityPosition(ped, false)
--                     ClearPedTasks(PlayerPedId())
                   
-- 					TriggerServerEvent("prp-doors:alterlockstate",79)
--                     else
--                         local plyCoords = GetEntityCoords(PlayerPedId())
--                         TriggerEvent('DoLongHudText', "You notice fire, RUN!", 2)
--                         Wait(2000)
-- 						if math.random(1,100) > 85 then
--                             exports["prp-thermite"]:startFireAtLocation(plyCoords["x"],plyCoords["y"],plyCoords["z"]-0.3,10000)   
-- 						end
--                     end		
-- 				    TriggerEvent('inventory:removeItem',"thermite", 1)
--             else
--                 TriggerEvent('DoLongHudText', "You dont have any thermite!", 2)
-- 			end		
-- 		else
--             TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--         end	
-- 	end
--   end
-- end)  


-- RegisterNetEvent('prp-robbery:UseBankThermiteTwo')
-- AddEventHandler('prp-robbery:UseBankThermiteTwo', function(bankId, lockerId)
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
-- 	local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["thermite"][2]["x"], Config.BigBanks["pacific"]["thermite"][2]["y"], Config.BigBanks["pacific"]["thermite"][2]["z"])
--     if dist < 1.5 then
-- 		if CheckPolice() >= Config.MinimumPacificPolice then
-- 			if exports['prp-inventory']:hasEnoughOfItem('thermite', 1) then
--                 if exports["prp-thermite"]:startGame(15,2,10,500) then
-- 				    TriggerEvent('inventory:removeItem',"thermite", 1)

--                     TriggerEvent("attachItem","minigameThermite")

--                     RequestAnimDict("weapon@w_sp_jerrycan")
--                     while ( not HasAnimDictLoaded( "weapon@w_sp_jerrycan" ) ) do
--                         Wait(10)
--                     end
-- 					FreezeEntityPosition(ped, true)
--                     Wait(100)
--                     TaskPlayAnim(GetPlayerPed(-1),"weapon@w_sp_jerrycan","fire",2.0, -8, -1,49, 0, 0, 0, 0)
--                     Wait(5000)
--                     TaskPlayAnim(GetPlayerPed(-1),"weapon@w_sp_jerrycan","fire",2.0, -8, -1,49, 0, 0, 0, 0)
--                     TriggerEvent("destroyProp")
-- 					FreezeEntityPosition(ped, false)
--                     ClearPedTasks(PlayerPedId())
                    
-- 					TriggerServerEvent("prp-doors:alterlockstate",80)
--                     else
--                         local plyCoords = GetEntityCoords(PlayerPedId())
--                         TriggerEvent('DoLongHudText', "You notice fire, RUN!", 2)
--                         Wait(2000)
-- 						if math.random(1,100) > 85 then
--                             exports["prp-thermite"]:startFireAtLocation(plyCoords["x"],plyCoords["y"],plyCoords["z"]-0.3,10000)   
-- 						end
--                     end		
-- 				    TriggerEvent('inventory:removeItem',"thermite", 1)
-- 					TriggerEvent("prp-state:stateSet",16,2200)
--             else
--                 TriggerEvent('DoLongHudText', "You dont have any thermite!", 2)
-- 			end		
-- 		else
--             TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--         end	
-- 	end
-- end)

-- RegisterNetEvent("isRobberyActive", function(pBusy)
--     isBusy = pBusy
-- end)

-- RegisterNetEvent('prp-robbery:UseBankLockPick')
-- AddEventHandler('prp-robbery:UseBankLockPick', function()
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
--     local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][1]["x"], Config.BigBanks["pacific"]["coords"][1]["y"],Config.BigBanks["pacific"]["coords"][1]["z"])
--     if dist < 1.5 then
--         TriggerServerEvent("isRobberyActive")
--         if not isBusy then
--             if CheckPolice() >= Config.MinimumPacificPolice then
--                 if not Config.BigBanks["pacific"]["isOpened"] then 
--                 if exports['prp-inventory']:hasEnoughOfItem('thermite', 1) then
--                     Wait(300)
--                     TriggerEvent("animation:lockpickcar")
--                     local finished = exports["prp-lockpicking"]:lockpick(100,5,2,10)
--                     ClearPedTasks(PlayerPedId())
--                       if finished == 100 then 
--                           TriggerEvent("DoLongHudText","Success!", 1)
--                           TriggerServerEvent("prp-doors:alterlockstate",76)
                         
--                           TriggerEvent('inventory:removeItem', 'lockpick', 1)
--                           TriggerEvent("prp-state:stateSet",26,1200)
--                           TriggerEvent("evidence:bleeding")
                     
--                       end
                  
--                 else
--                     TriggerEvent('DoLongHudText', "You're missing thermite", 2)
--                 end
--                 else
--                     TriggerEvent('DoLongHudText', "Looks like the bank is already open.", 2)
--                 end
--             else
--                 TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--             end
--         else
--             TriggerEvent('DoLongHudText', "The security lock is active, opening the door is currently not possible.", 2)
--         end
--     end 
-- end)

-- RegisterNetEvent('prp-robbery:UseBankCardA')
-- AddEventHandler('prp-robbery:UseBankCardA', function()
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
--     local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][2]["x"], Config.BigBanks["pacific"]["coords"][2]["y"],Config.BigBanks["pacific"]["coords"][2]["z"])
--     if dist < 1.5 then
--         TriggerServerEvent("isRobberyActive")
--         if not isBusy then
--             local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][2]["x"], Config.BigBanks["pacific"]["coords"][2]["y"], Config.BigBanks["pacific"]["coords"][2]["z"])
--             if dist < 1.5 then
--                 if CheckPolice() >= Config.MinimumPacificPolice then
--                     if not Config.BigBanks["pacific"]["isOpened"] then
--                         if exports['prp-inventory']:hasEnoughOfItem('electronickit', 1) then
--                             FreezeEntityPosition(ped, true)
--                             local card = exports["prp-taskbar"]:taskBar(9000,"Inserting Card")
--                             FreezeEntityPosition(ped, false)
--                             if card == 100 then
--                                 FreezeEntityPosition(ped, true)
--                                 Wait(400)
--                                 local hack = exports["prp-taskbar"]:taskBar(6000,"Hacking..")
--                                 FreezeEntityPosition(ped, false)
--                                 Wait(300)
--                                 TaskPlayAnim(PlayerPedId(), "cellphone@", "cellphone_text_read_base", 2.0, 1.0, -1, 49, 0, 0, 0, 0)
--                                 --TriggerEvent("attachItemPhone","phone")
--                                 TriggerEvent("mhacking:show")
--                                 TriggerEvent("mhacking:start",7,30, OnHackDoorDone)
--                                 TriggerEvent('inventory:removeItem', 'Gruppe6Card22', 1)
--                             end
                        
                        
--                         else
--                             TriggerEvent('DoLongHudText', "You're missing electronickit", 2)
--                         end
                        
--                     else
--                         TriggerEvent('DoLongHudText', "Looks like the bank is already open.", 2)
--                     end
--                 else
--                     TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--                 end
--             end
--         else
--             TriggerEvent('DoLongHudText', "The security lock is active, opening the door is currently not possible.", 2)
--         end
--     end	
-- end)

-- function OnHackDoorDone(success, timeremaining)
--     if success then
--         TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('prp-dispatch:pacificrobbery', -1)
-- 		TriggerEvent('DoLongHudText', "Success!", 1)
-- 		TriggerServerEvent("prp-doors:alterlockstate",78)
--     else
-- 		TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('DoLongHudText', "Failed!", 1)
-- 	end
-- end

-- RegisterNetEvent('prp-robbery:UseBankCardB')
-- AddEventHandler('prp-robbery:UseBankCardB', function()
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
--     local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][3]["x"], Config.BigBanks["pacific"]["coords"][3]["y"],Config.BigBanks["pacific"]["coords"][3]["z"])
--     if dist < 1.5 then
--         TriggerServerEvent("isRobberyActive")
--             if not isBusy then
-- 			    local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][3]["x"], Config.BigBanks["pacific"]["coords"][3]["y"], Config.BigBanks["pacific"]["coords"][3]["z"])
-- 				if dist < 1.5 then
--                 if CheckPolice() >= Config.MinimumPacificPolice then
--                     if not Config.BigBanks["pacific"]["isOpened"] then 
-- 					if exports['prp-inventory']:hasEnoughOfItem('usbdevice', 1) then
-- 					FreezeEntityPosition(ped, true)
-- 					    local card = exports["prp-taskbar"]:taskBar(9000,"Inserting Card")
-- 						    FreezeEntityPosition(ped, false)
-- 						    if card == 100 then
-- 							    FreezeEntityPosition(ped, true)
-- 						        Wait(400)
--                                 local hack = exports["prp-taskbar"]:taskBar(6000,"Hacking..")
-- 								FreezeEntityPosition(ped, false)
-- 						    end	
--                                 Wait(300)
--         						TaskPlayAnim(PlayerPedId(), "cellphone@", "cellphone_text_read_base", 2.0, 1.0, -1, 49, 0, 0, 0, 0)
-- 								--TriggerEvent("attachItemPhone","phone")
--                                 TriggerEvent("mhacking:show")
-- 								TriggerEvent("mhacking:start",7,30, OnHackDone)
-- 								TriggerEvent('inventory:removeItem', 'Gruppe6Card22', 1)
--                                 if not copsCalled then
--                                 local s1, s2 = Citizen.InvokeNative(0x2EB41072B4C1E4C0, pos.x, pos.y, pos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
--                                 local street1 = GetStreetNameFromHashKey(s1)
--                                 local street2 = GetStreetNameFromHashKey(s2)
--                                 local streetLabel = street1
--                                 if street2 ~= nil then 
--                                     streetLabel = streetLabel .. " " .. street2
--                                 end
--                                 if Config.BigBanks["pacific"]["alarm"] then
--                                     TriggerEvent('prp-dispatch:pacificrobbery')
--                                 copsCalled = true
--                             end
--                         end

--                     else
--                         TriggerEvent('DoLongHudText', "You're missing usbdevice", 2)
--                     end
					
--                     else
--                         TriggerEvent('DoLongHudText', "Looks like the bank is already open.", 2)
--                     end
--                 else
--                     TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--                 end
--             else
--                 TriggerEvent('DoLongHudText', "The security lock is active, opening the door is currently not possible.", 2)
--             end
--         end
  
--   end	
-- end)

-- function OnHackDone(success, timeremaining)
--     if success then
--         TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('DoLongHudText', "Success!", 1)
-- 		TriggerEvent('player:receiveItem', 'Gruppe6Card2', 1)
--     else
-- 		TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('DoLongHudText', "Failed!", 1)
-- 	end
-- end


-- RegisterNetEvent('prp-robbery:UseBankCardC')
-- AddEventHandler('prp-robbery:UseBankCardC', function()
--     local ped = GetPlayerPed(-1)
--     local pos = GetEntityCoords(ped)
--     local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"])
-- 	if dist < 1.5 then
--         TriggerServerEvent("isRobberyActive")
--             if not isBusy then
--                 local dist = GetDistanceBetweenCoords(pos, Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"])
--                 if dist < 1.5 then
--                     if CheckPolice() >= Config.MinimumPacificPolice then
--                         if not Config.BigBanks["pacific"]["isOpened"] then 
-- 						if exports['prp-inventory']:hasEnoughOfItem('electronickit', 1) then
-- 						FreezeEntityPosition(ped, true)
-- 						    local card = exports["prp-taskbar"]:taskBar(9000,"Inserting Card")
-- 							FreezeEntityPosition(ped, false)
-- 						    if card == 100 then
-- 							    TriggerEvent('DoLongHudText', "Please leave here !", 2)
-- 						        Wait(400)
--                                 local hack = exports["prp-taskbar"]:taskBar(6000,"Hacking..")
-- 						    end	
--                                 Wait(300)
--         						TaskPlayAnim(PlayerPedId(), "cellphone@", "cellphone_text_read_base", 2.0, 1.0, -1, 49, 0, 0, 0, 0)
-- 								--TriggerEvent("attachItemPhone","phone")
--                                 TriggerEvent("mhacking:show")
-- 								TriggerEvent("mhacking:start",7,30, OnHackPacificDone)
-- 								TriggerEvent('inventory:removeItem', 'Gruppe6Card2', 1)
--                                 if not copsCalled then
--                                 local s1, s2 = Citizen.InvokeNative(0x2EB41072B4C1E4C0, pos.x, pos.y, pos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt())
--                                 local street1 = GetStreetNameFromHashKey(s1)
--                                 local street2 = GetStreetNameFromHashKey(s2)
--                                 local streetLabel = street1
--                                 if street2 ~= nil then 
--                                     streetLabel = streetLabel .. " " .. street2
--                                 end
--                                 if Config.BigBanks["pacific"]["alarm"] then
--                                    TriggerEvent('prp-dispatch:pacificrobbery')
--                                    copsCalled = true
--                                 end
--                             end
							
--                         else
--                             TriggerEvent('DoLongHudText', "You're missing electronickit", 2)
--                         end
--                         else
--                             TriggerEvent('DoLongHudText', "Looks like the bank is already open.", 2)
--                         end
--                     else
--                         TriggerEvent('DoLongHudText', "Not enough police (6 needed)", 2)
--                     end
--                 else
--                     TriggerEvent('DoLongHudText', "The security lock is active, opening the door is currently not possible.", 2)
--                 end
--             end
		
--     end 
-- end)

-- function OnHackPacificDone(success, timeremaining)
--     if success then
--         TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('DoLongHudText', "Success!", 1)
--         TriggerServerEvent('prp-robbery:server:setBankState', "pacific", true)
--     else
-- 		TriggerEvent('mhacking:hide')
-- 		TriggerEvent("animation:cancel")
-- 		TriggerEvent('DoLongHudText', "Failed!", 1)
-- 	end
-- end


-- function OpenPacificDoor()
--     local object = GetClosestObjectOfType(Config.BigBanks["pacific"]["coords"][4]["x"], Config.BigBanks["pacific"]["coords"][4]["y"], Config.BigBanks["pacific"]["coords"][4]["z"], 20.0, Config.BigBanks["pacific"]["object"], false, false, false)
--     local timeOut = 10
--     local entHeading = Config.BigBanks["pacific"]["heading"].closed

--     if object ~= 0 then
--         Citizen.CreateThread(function()
--             while true do

--                 if entHeading > Config.BigBanks["pacific"]["heading"].open then
--                     SetEntityHeading(object, entHeading - 10)
--                     entHeading = entHeading - 0.5
--                 else
--                     break
--                 end

--                 Citizen.Wait(10)
--             end
--         end)
--     end
-- end
