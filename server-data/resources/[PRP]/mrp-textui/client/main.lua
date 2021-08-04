RegisterNetEvent('mrp-textui:ShowUI')
AddEventHandler('mrp-textui:ShowUI', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
end)

RegisterNetEvent('mrp-textui:HideUI')
AddEventHandler('mrp-textui:HideUI', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

