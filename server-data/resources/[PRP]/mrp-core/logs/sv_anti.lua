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
					exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872525253467865178/JXZ1A7UahOeGq59unkQc3KuVsovHoH-Spw57I5NEx9PStjj-2FKjbXBZqKpQulNZkYcY", pOwner, "Cheater: Spawned Blacklisted Prop", "Spawning Props", LogInfo)
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
			exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872527806666514473/6wSlmR7_YW22UlqQcFrOKv80ldOfCLASAdiEXlwIyV6HC2HyfOI4EpzlEYAniqZfLYii", pSrc, "Player Disconnected", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:dead')
	AddEventHandler('player:dead',function(killer, DeathReason, pWeapon)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local pSrc = source
			local pName = GetPlayerName(pSrc)
			local tName = GetPlayerName(killer)

			local LogInfo = pName .. " was killed by " .. tName .. "  | Type: " ..DeathReason
			exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872525744495001640/JoJoqeicwo_C6x1jTWTV6lNFmLv_xRCA2FS4mLYJJeETvOvxtUHoBFuMmn9Th9AL2eCS", killer, "Combat Encounter", "", LogInfo)
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
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872526430511202334/SsSYgV969_YLgjtE7pAPx1HXomSQp2loLr5oZcjStvwR5CacXJ2eNtoCMsiMt3uAlfJn", pSrc, "Spawned Item -> with admin menu", "", LogInfo)
			elseif LogType == "Spawned:car" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872526506230939698/RWUzKuxAGJAsw4vCoufMPMBDF10Sf3eFkKPe12VYA92AOk-A-UnWEj_vCqeXwpvT56w6", pSrc, "Spawned Car -> with admin menu", "", LogInfo)
			elseif LogType == "Spectating" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872526580281397278/ge8s2ybeTQz9w6MnkoFRqM6jE7GOMvRfJ6hsVU8BUTD0fzatSmasxQavqSpVjb2L8KEF", pSrc, "Spectating Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "Searching" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872526656559009823/dg1XR9ZsllsNvylwRze_Na80LKbKtrZjp4xiDUpkb8Uk2CsVMUjTfirezrqOJIAsjiU4", pSrc, "Searching Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "deposit" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872527948081672213/ETv5LcdsM1si322_VXnAROgsxrPKbIujsG91gl0w6jcKIv02PFWrfdUaHc5VK_zOMOcQ", pSrc, "Banking Deposit", "", LogInfo)
			elseif LogType == "withdraw" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872528014402011166/J6WUtCzi-38XZ9Ygf11h6BbI5bi5OBJwCH07HBz-3DtJXEpyoyrb6q1sEO5qf219t42o", pSrc, "Banking Withdraw", "", LogInfo)
			elseif LogType == "transfer" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872528095293362196/1CTnXFJSBexO97XOSzx42TdNDjRbLVlpEklODHZgmLOfV9cSE1ANjXQEdSTx0XT_t26z", pSrc, "Bank Transfer", "", LogInfo)
			elseif LogType == "give_cash" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872528248096034868/qFnYMSI6tKsLT4t3Fa61ZOopezfSSdZzhASlWUqe81tgkyDS28l0qpu8XRKcWbOUbyAP", pSrc, "Give Cash", "", LogInfo)
			elseif LogType == "damage_multi" then
				exports['mrp-core']:DiscordLog("https://discord.com/api/webhooks/872527460707749888/ssVZQLBOZA2j0TvYbknnSdXLUDJmEiYTQGns8EIM5pRaPNVvSBnWPrTYuVJVroroVOML", pSrc, "Damage Modifier", "Cheating | Damage Modifier | Perma Banned", LogInfo)
			end
		end
	end
