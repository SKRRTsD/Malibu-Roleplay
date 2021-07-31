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
					exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495443367395369/sJObP8yeAc66ZWTHMnO-WWWCdpEdHtEecZZ3ozZXwuphXEbFNDl3YO4zCDgfl0ODk-2c", pOwner, "Cheater: Spawned Blacklisted Prop", "Spawning Props", LogInfo)
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
			exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495578407198840/pUpGiQGTq-mPmb99JpWtZqLN_Q7itVNByurddkuFDGfo0d-xx-2WNc6I0H01sJDCXZy5", pSrc, "Player Disconnected", "", LogInfo)
		end
	end)


	RegisterServerEvent('player:dead')
	AddEventHandler('player:dead',function(killer, DeathReason, pWeapon)
		if GetConvarInt('logs_enabled', 1) == 1 then
			local pSrc = source
			local pName = GetPlayerName(pSrc)
			local tName = GetPlayerName(killer)

			local LogInfo = pName .. " was killed by " .. tName .. "  | Type: " ..DeathReason
			exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495680236515378/IxvMeawNTx6s-lyH4zmc5tnmUpHnOAOadaTb0ZFB1T541SuCiqewVF776vyM_JmP5TIS", killer, "Combat Encounter", "", LogInfo)
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
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495839951421491/HTIAqoLGqLWAIq0SH4jk2UZ-jE2SEBcCTMGbbZ28l0gmbKblNEPtAPuT-u-DTYJO2r3I", pSrc, "Spawned Item -> with admin menu", "", LogInfo)
			elseif LogType == "Spawned:car" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495896461254776/rjvuZKZ3-3SBJgvU6mt8vcGxXPdftOgzJI9tU1bWigLebvSh_5Kot6DkFzJ80rMzv7N1", pSrc, "Spawned Car -> with admin menu", "", LogInfo)
			elseif LogType == "Spectating" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/864153335455940629/TyccSlgEk-V3lf7RjwV4REX6cp4uPAdxflETJqbV5oT9cYUhyH2helFzAD54_8KD-n7j", pSrc, "Spectating Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "Searching" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870495982469652490/x-5eiqYUkJOxO57kHWK2ZgKonj3MzRzNPEKq4MddGfFuRwftH6DfvZI7pMSkGkNQpJAU", pSrc, "Searching Toggled -> with admin menu", "", LogInfo)
			elseif LogType == "deposit" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870496067458842666/eX-7G6dxJTSx_p5jbwvbs_klGUIIkUptdYLh1jLjBF2iiGwP0qoTYZO3ROLbuOemaKHp", pSrc, "Banking Deposit", "", LogInfo)
			elseif LogType == "withdraw" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870496123863855135/nTGe-4vUPXKaK8NG2qYjsOARWV6UzJ5PgBcygnd3nK1OCeoM1DDdlUFYFvdVSJfJcqiX", pSrc, "Banking Withdraw", "", LogInfo)
			elseif LogType == "transfer" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870496187491434496/A9UNflUU8v25js0MgRDhI4myoYC6Z_XwyrgXewivm73LgFwe5LmdPwzte0fyuuvNYpV4", pSrc, "Bank Transfer", "", LogInfo)
			elseif LogType == "give_cash" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870496250917683200/VvICZjblZyqxtjLjtfANfB5-Eo77f7Rwl3-V9Ou8Y-wfy3CMX5smhSUxtjrbgQxOEu4D", pSrc, "Give Cash", "", LogInfo)
			elseif LogType == "damage_multi" then
				exports['prp-core']:DiscordLog("https://discord.com/api/webhooks/870496345029492776/yRPUQI7IMU7v6Yzs6FKhRmAetJ4pHI6ymn_ApH92oYd0dTbPIPpzUVSjh2qG0_pG-nEX", pSrc, "Damage Modifier", "Cheating | Damage Modifier | Perma Banned", LogInfo)
			end
		end
	end
