local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('nkoLean:serverTake', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local cash = Player.PlayerData.money.cash
    print(json.encode(item))
    if cash >= tonumber(item.price) then
        Player.Functions.RemoveMoney('cash', tonumber(item.price))
        Player.Functions.AddItem(item.name, item.amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item.name], "add", 1)
    else
        QBCore.Functions.Notify('Üzerinde yeterli nakit para yok.', 'error', 4000)
    end
end)

-- For Bowl Sprite

RegisterServerEvent('bowl-sprite:mustRemove')
AddEventHandler('bowl-sprite:mustRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem("bowl", 1)
    Player.Functions.RemoveItem("sprite", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["bowl"], "remove", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["sprite"], "remove", 1)
end)

RegisterServerEvent('bowl-sprite:add')
AddEventHandler('bowl-sprite:add', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.AddItem("spritedbowl", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["spritedbowl"], "add", 1)
end)

-- For Ice

RegisterNetEvent('sprite-ice:mustRemove')
RegisterNetEvent('sprite-ice:mustRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem("spritedbowl", 1)
    Player.Functions.RemoveItem("ice", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["spritebowl"], "remove", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ice"], "remove", 1)
end)

RegisterNetEvent('sprite-ice:add')
RegisterNetEvent('sprite-ice:add', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.AddItem("icedspritedbowl", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["icedspritedbowl"], "add", 1)
end)

-- For Ibuprofen

RegisterNetEvent('iced-ibuprofen:mustRemove')
RegisterNetEvent('iced-ibuprofen:mustRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem("icedspritedbowl", 1)
    Player.Functions.RemoveItem("ibuprofen", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["icedspritedbowl"], "remove", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ibuprofen"], "remove", 1)
end)

RegisterNetEvent('iced-ibuprofen:add')
RegisterNetEvent('iced-ibuprofen:add', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.AddItem("ibuprofenedbowl", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ibuprofenedbowl"], "add", 1)
end)

-- For Lean

RegisterNetEvent('lean:remove')
AddEventHandler('lean:remove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem('lean', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["lean"], "remove")
end)

RegisterNetEvent('lean:mustRemove')
AddEventHandler('lean:mustRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem('ibuprofenedbowl', 1)
    Player.Functions.RemoveItem('jolly', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ibuprofenedbowl"], "remove")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["jolly"], "remove")
end)

RegisterNetEvent('lean:give')
AddEventHandler('lean:give', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    
    Player.Functions.AddItem('lean', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["lean"], "add")
end)