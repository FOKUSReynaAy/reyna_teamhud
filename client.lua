RegisterNetEvent('reyna:update')
AddEventHandler('reyna:update', function(count, einreise, duty)
    SendNUIMessage({
        type = 'update',
        count = count,
        einreise = einreise,
        duty = duty
    })
end)


function reynarph(show)
    if show then
        SetNuiFocus(false, false)
    else
        SetNuiFocus(false, false)
    end
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        reynarph(true)
    end
end)

RegisterNUICallback('close', function(data, cb)
    reynarph(false) 
    cb('ok')
end)
