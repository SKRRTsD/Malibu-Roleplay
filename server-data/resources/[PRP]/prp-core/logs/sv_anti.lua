Citizen.CreateThread(function()
	if GetConvarInt('logs_enabled', 1) == 1 then
		print("^6(prp-core)^0 | ^5[anti-cheat]^0 | ^2Currently running and logging all components^0")		
	else
		print("^6(prp-core)^0 | ^5[anti-cheat]^0 | ^8Currently disabled / Dev Server^0")	
	end
end)


	AddEventHandler('entityCreating', function(entity)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local model = GetEntityModel(entity)
			local pOwner = NetworkGetEntityOwner(entity)
			for i=1, #blockedItems do 
				if model == GetHashKey(blockedItems[i]) then
					local LogInfo = "Prop Hash: " .. model
					exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871352702418964480/2lqV3IkR0OqSuS62sGFiinbyNCXPu1ZKtJ7SSv4jD-FhMlpKpNkJnalsPAxQv-f8_uA3", pOwner, "Cheater: Spawned Blacklisted Prop", "Spawning Props", LogInfo)
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
			exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871352827476336663/T5yTf9seCLBq389dH_EXBZot-p5oNO2T733RVOke_yyh-Jvt226ilHJX2hpK9vwT3DPV", pSrc, "Player Disconnected", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:dead')
	AddEventHandler('player:dead',function(killer, DeathReason, pWeapon)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local pSrc = source
			local pName = GetPlayerName(pSrc)
			local tName = GetPlayerName(killer)

			local LogInfo = pName .. " was killed by " .. tName .. "  | Type: " ..DeathReason
			exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871352903217057803/Iuhpy3Tplfbw3iKoIBikNrcs7eKvSvNfNhupzlljVcpxNsDnTj4g2uWokGsYvTleRWSc", killer, "Combat Encounter", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:damage:multi')
	AddEventHandler('player:damage:multi',function(attacker, weapon, dmg)
		local aName = GetPlayerName(attacker)
		local pName = GetPlayerName(source)
		local pLogData = "Attacker's Steam Name: " ..  aName .. " | ID: " .. attacker .. "\n Damage Modifier: " .. dmg .. "\n Victim's Name: " ..pName.. "\n Weapon: " .. weapon
		exports['prp-core']:k_log(attacker, "damage_multi", pLogData)
		DropPlayer(attacker, "Cheating | Damage Modifier | Perma Banned")
	end)


	function k_log(pSrc, LogType, LogInfo)
		if GetConvarInt('logs_enabled', 1) == 1 then
			if LogType == "Spawned:items" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353004014575656/KZZp6xl-s0nGnAASg2E1MTvq4MzhgievPKtcTzB7AU93RBnmnktuEIBzjefMqnBwulBv", pSrc, "Spawned Item -> with admin menu", "", LogInfo)
			elseif LogType == "Spawned:car" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353098055077938/yqVTCTgzvxE_Jsar_oAqZREvkO7wo0i6AiQVPKjF9DZ5bjFcYORVHnHJdgR_to-qmAoz", pSrc, "Spawned Car -> with admin menu", "", LogInfo)
			elseif LogType == "Spectating" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353175532257333/sFtyuqlVqfzZGR-DS2qTibqbWvhpzPyoCpnVZGqoRL1Nt_CU6UfUy8US6ozMSQm-tqZN", pSrc, "Spectating Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "Searching" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353273582501938/VN_857VQnpKnhADQ4k-LGw3BeYjb1hnnyPikTb9mt6MD8Bsw2XpBWlkdm_tKuBnR-Xyg", pSrc, "Searching Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "deposit" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353338522894348/jcVDXZUasMtDhKesksMGXHfL11NFQ6QOunOgVbN8w741N51K9sq3EK24-93vCVzBtie0", pSrc, "Banking Deposit", "", LogInfo)
			elseif LogType == "withdraw" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353400502153236/SB6gTSEHJ2BY1H8XJ9kbwGPGC9WKWHY9pvTqYpn7TTdU0mmw5ySI_cwiNaaIQ81VEKfc", pSrc, "Banking Withdraw", "", LogInfo)
			elseif LogType == "transfer" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353462850474026/YrbboFjIn-23ergIypJ2WzbONzN2SLeBVPgk3kOGhXBMxoR86TtCyIcSTd3FLWY0BbRm", pSrc, "Bank Transfer", "", LogInfo)
			elseif LogType == "give_cash" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353523202310195/hW7v-rm88XRO4Kd1k2bmLrNwtS2iBehXkujuuiv6Jqu9dZqaEK7cpXqHYOiAOlth-oBY", pSrc, "Give Cash", "", LogInfo)
			elseif LogType == "damage_multi" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/871353603393208381/zzHysYRzF-ZQOo8P2KKRwaPuPdlaCECHYzkbtS3Pt7pNSWhxwXsxp8w_5zIqQ1P8sm8y", pSrc, "Damage Modifier", "Cheating | Damage Modifier | Perma Banned", LogInfo)
			end
		end
	end
