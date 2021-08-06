RegisterServerEvent("mrp-alerts:teenA")
AddEventHandler("mrp-alerts:teenA",function(targetCoords)
    TriggerClientEvent('mrp-alerts:policealertA', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:teenB")
AddEventHandler("mrp-alerts:teenB",function(targetCoords)
    TriggerClientEvent('mrp-alerts:policealertB', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:teenpanic")
AddEventHandler("mrp-alerts:teenpanic",function(targetCoords)
    TriggerClientEvent('mrp-alerts:panic', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:fourA")
AddEventHandler("mrp-alerts:fourA",function(targetCoords)
    TriggerClientEvent('mrp-alerts:tenForteenA', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:fourB")
AddEventHandler("mrp-alerts:fourB",function(targetCoords)
    TriggerClientEvent('mrp-alerts:tenForteenB', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:downperson")
AddEventHandler("mrp-alerts:downperson",function(targetCoords)
    TriggerClientEvent('mrp-alerts:downalert', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:shoot")
AddEventHandler("mrp-alerts:shoot",function(targetCoords)
    TriggerClientEvent('mrp-outlawalert:gunshotInProgress', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:storerob")
AddEventHandler("mrp-alerts:storerob",function(targetCoords)
    TriggerClientEvent('mrp-alerts:storerobbery', -1, targetCoords)
	return
end)


RegisterServerEvent("mrp-alerts:houserob")
AddEventHandler("mrp-alerts:houserob",function(targetCoords)
    TriggerClientEvent('mrp-alerts:houserobbery', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:drugsselling")
AddEventHandler("mrp-alerts:drugsselling",function(targetCoords)
    TriggerClientEvent('mrp-alerts:drugsales', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:tbank")
AddEventHandler("mrp-alerts:tbank",function(targetCoords)
    TriggerClientEvent('mrp-alerts:banktruck', -1, targetCoords)
	return
end)

RegisterServerEvent("mrp-alerts:robjew")
AddEventHandler("mrp-alerts:robjew",function()
    TriggerClientEvent('mrp-alerts:jewelrobbey', -1)
	return
end)


RegisterServerEvent("mrp-dispatch:fleeca:bank")
AddEventHandler("mrp-dispatch:fleeca:bank",function(pCoords)
    TriggerClientEvent('mrp-dispatch:fleeca:bank:receive', -1, pCoords)
end)

