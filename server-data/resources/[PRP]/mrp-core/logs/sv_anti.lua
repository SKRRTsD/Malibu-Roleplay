Citizen.CreateThread(function()
	if GetConvarInt('logs_enabled', 1) == 1 then
		print("^6(mrp-core)^0 | ^5[anti-cheat]^0 | ^2Currently running and logging all components^0")		
	else
		print("^6(mrp-core)^0 | ^5[anti-cheat]^0 | ^8Currently disabled / Dev Server^0")	
	end
end)


	AddEventHandler('entityCreating', function(entity)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local model = GetEntityModel(entity)
			local pOwner = NetworkGetEntityOwner(entity)
			for i=1, #blockedItems do 
				if model == GetHashKey(blockedItems[i]) then
					local LogInfo = "Prop Hash: " .. model
					exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/865001456339124234/ERTHvnL5ZORd6XLZ6mUi28VChXWUqiKl0li9a_sN0FhJxAydmw6-y2j1HjI2LjW0Bm2N", pOwner, "Cheater: Spawned Blacklisted Prop", "Spawning Props", LogInfo)
					DropPlayer(pOwner, "[Anti-Cheat]: You have been permanently banned.")
					CancelEvent()
				end
			end
		end
	end)

	-- Send message when Player disconnects from the server
	AddEventHandler('playerDropped', function(reason)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local pSrc = source
			local pName = GetPlayerName(pSrc)
			local LogInfo =  pName.. " Disconnected | Reason: " .. reason
			exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864152253483974716/cPMjguk_E6e2gjpwJEtUNq4i9PCmj4lfbvNKJFlb9r4ZQ3HNkpVL-SsrLS-fuKSyZ1cP", pSrc, "Player Disconnected", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:dead')
	AddEventHandler('player:dead',function(killer, DeathReason, pWeapon)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local pSrc = source
			local pName = GetPlayerName(pSrc)
			local tName = GetPlayerName(killer)

			local LogInfo = pName .. " was killed by " .. tName .. "  | Type: " ..DeathReason
			exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864152380764192809/_23rdEpHvIQFk7RfptApD_dhF4wIXLTfomfxkfMGpaTIx5sizZ5OodK55nOo12fqWuQD", killer, "Combat Encounter", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:damage:multi')
	AddEventHandler('player:damage:multi',function(attacker, weapon, dmg)
		local aName = GetPlayerName(attacker)
		local pName = GetPlayerName(source)
		local pLogData = "Attacker's Steam Name: " ..  aName .. " | ID: " .. attacker .. "\n Damage Modifier: " .. dmg .. "\n Victim's Name: " ..pName.. "\n Weapon: " .. weapon
		exports['mrp-core']:k_log(attacker, "damage_multi", pLogData)
		DropPlayer(attacker, "Cheating | Damage Modifier | Perma Banned")
	end)


	function k_log(pSrc, LogType, LogInfo)
		if GetConvarInt('logs_enabled', 1) == 1 then
			if LogType == "Spawned:items" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153200079536178/CLZpb0qCpZ6YzQF49k5ZuuqEsF1EEhuKf2woORqJlqg6EobJIS-cBdwk9ll6vZOmkinY", pSrc, "Spawned Item -> with admin menu", "", LogInfo)
			elseif LogType == "Spawned:car" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153262406893598/tT2_3qQc6byB7eq04QAtY9Zih0ahGvDpy4-bZk1WI6jYC9Ez-Sphb9VInlkZ3UQ-5QYq", pSrc, "Spawned Car -> with admin menu", "", LogInfo)
			elseif LogType == "Spectating" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153335455940629/TyccSlgEk-V3lf7RjwV4REX6cp4uPAdxflETJqbV5oT9cYUhyH2helFzAD54_8KD-n7j", pSrc, "Spectating Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "Searching" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153398193291284/XA9L3KwiVCcI1x5o2-8BuhuMo7m88_RxZM8tGM0UeLdGwFYpyo5FqkxG-Q3enxHUdK4q", pSrc, "Searching Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "deposit" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153603571974194/l594-kIdGCRibWMVKRu35kpQCYC3_gPL34KizjhDzSywNbZuFG4S0_2pthUzlWfWNrfG", pSrc, "Banking Deposit", "", LogInfo)
			elseif LogType == "withdraw" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153670169002024/w9H79f-ayiOSnc_KiyjcD0_D5vM83p2LWG8Ma65I9XbzAPJwW6fYXb-m6XaxcNRngbK1", pSrc, "Banking Withdraw", "", LogInfo)
			elseif LogType == "transfer" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153847941562388/T4GlTUgNSVq-bcNghEft3muYDcdTYaQEs7Y1OWZTrvANF3yuHqgIuyUWfn02McycGmxe", pSrc, "Bank Transfer", "", LogInfo)
			elseif LogType == "give_cash" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153920120422441/1AHYusHikV6tUmonqfl2qRgoZ_53zZSkTyO0eHIQGWS537fHsBx7DQuyWwsHLfHdZXMU", pSrc, "Give Cash", "", LogInfo)
			elseif LogType == "damage_multi" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/864153977070419968/fdlrvdn_zdsqSDaKEkrR4cbCui_MwoeYLyWTSpDcoQoq6VHkO6WBctA5z8VlvaJhJq_s", pSrc, "Damage Modifier", "Cheating | Damage Modifier | Perma Banned", LogInfo)
			end
		end
	end
