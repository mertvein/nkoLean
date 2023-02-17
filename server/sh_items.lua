local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('bowl', function(source)
    local src = source
    TriggerClientEvent('nkoLean:spriteLoad', src)
end)

QBCore.Functions.CreateUseableItem('spritedbowl', function(source)
    local src = source
    TriggerClientEvent('nkoLean:iceLoad', src)
end)

QBCore.Functions.CreateUseableItem('icedspritedbowl', function(source)
    local src = source
    TriggerClientEvent('nkoLean:ibuprofenLoad', src)
end)

QBCore.Functions.CreateUseableItem('ibuprofenedbowl', function(source)
    local src = source
    TriggerClientEvent('nkoLean:leanItem', src)
end)

QBCore.Functions.CreateUseableItem('lean', function(source)
    local src = source
    TriggerClientEvent('nkoLean:useLean', src)
end)