RegisterNetEvent('mrp-doors:show')
AddEventHandler('mrp-doors:show', function(action, text)
	SendNUIMessage({
		action = action,
		text = text,
	})
end)

RegisterNetEvent('mrp-doors:hide')
AddEventHandler('mrp-doors:hide', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

