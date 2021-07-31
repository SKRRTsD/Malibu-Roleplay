RegisterNetEvent('prp-textui:ShowUI')
AddEventHandler('prp-textui:ShowUI', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
end)

RegisterNetEvent('prp-textui:HideUI')
AddEventHandler('prp-textui:HideUI', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

