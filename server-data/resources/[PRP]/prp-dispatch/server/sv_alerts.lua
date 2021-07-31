RegisterServerEvent("prp-alerts:teenA")
AddEventHandler("prp-alerts:teenA",function(targetCoords)
    TriggerClientEvent('prp-alerts:policealertA', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:teenB")
AddEventHandler("prp-alerts:teenB",function(targetCoords)
    TriggerClientEvent('prp-alerts:policealertB', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:teenpanic")
AddEventHandler("prp-alerts:teenpanic",function(targetCoords)
    TriggerClientEvent('prp-alerts:panic', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:fourA")
AddEventHandler("prp-alerts:fourA",function(targetCoords)
    TriggerClientEvent('prp-alerts:tenForteenA', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:fourB")
AddEventHandler("prp-alerts:fourB",function(targetCoords)
    TriggerClientEvent('prp-alerts:tenForteenB', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:downperson")
AddEventHandler("prp-alerts:downperson",function(targetCoords)
    TriggerClientEvent('prp-alerts:downalert', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:shoot")
AddEventHandler("prp-alerts:shoot",function(targetCoords)
    TriggerClientEvent('prp-outlawalert:gunshotInProgress', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:storerob")
AddEventHandler("prp-alerts:storerob",function(targetCoords)
    TriggerClientEvent('prp-alerts:storerobbery', -1, targetCoords)
	return
end)


RegisterServerEvent("prp-alerts:houserob")
AddEventHandler("prp-alerts:houserob",function(targetCoords)
    TriggerClientEvent('prp-alerts:houserobbery', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:drugsselling")
AddEventHandler("prp-alerts:drugsselling",function(targetCoords)
    TriggerClientEvent('prp-alerts:drugsales', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:tbank")
AddEventHandler("prp-alerts:tbank",function(targetCoords)
    TriggerClientEvent('prp-alerts:banktruck', -1, targetCoords)
	return
end)

RegisterServerEvent("prp-alerts:robjew")
AddEventHandler("prp-alerts:robjew",function()
    TriggerClientEvent('prp-alerts:jewelrobbey', -1)
	return
end)


RegisterServerEvent("prp-dispatch:fleeca:bank")
AddEventHandler("prp-dispatch:fleeca:bank",function(pCoords)
    TriggerClientEvent('prp-dispatch:fleeca:bank:receive', -1, pCoords)
end)

