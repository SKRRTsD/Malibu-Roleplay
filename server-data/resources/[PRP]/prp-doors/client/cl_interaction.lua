RegisterNetEvent('prp-doors:show')
AddEventHandler('prp-doors:show', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
end)

RegisterNetEvent('prp-doors:hide')
AddEventHandler('prp-doors:hide', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

