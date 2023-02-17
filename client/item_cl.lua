local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('nkoLean:spriteLoad', function()
    local hasItem = QBCore.Functions.HasItem('sprite')
    if hasItem then
        TriggerServerEvent('bowl-sprite:mustRemove')
        TriggerEvent('animations:client:EmoteCommandStart', {"drink"})

        prop_name = 'ng_proc_sodacan_01b'
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
        local boneIndex = GetPedBoneIndex(ped, 4000)

        QBCore.Functions.Progressbar("spriteLoad", Lang:t('progressbar.spriteLoad'), Config.ShakeTime, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['sprite'].animDict,
            anim = Config.Animations['sprite'].anim,
            flags = Config.Animations['sprite'].flags,
        }, {
            AttachEntityToEntity(prop, ped, boneIndex, 0.015, 0.0100, 0.0250, 0.024, -100.0, 40.0, true, true, false, true, 1, true) -- Left Hand
        }, {}, function() -- Done
            ClearPedSecondaryTask(ped)
            DeleteObject(prop)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('bowl-sprite:add')
            QBCore.Functions.Notify(Lang:t('success.notify'), 'success', Config.NotifyTime)
        end)
    else
        QBCore.Functions.Notify(Lang:t('error.dont_have_sprite'), 'error', 4500)
    end
end)

RegisterNetEvent('nkoLean:iceLoad', function()
    local hasItem = QBCore.Functions.HasItem('ice')
    if hasItem then
        TriggerServerEvent('sprite-ice:mustRemove')

        prop_name = 'ng_proc_sodacan_01b'
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
        local boneIndex = GetPedBoneIndex(ped, 4000)

        TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
        QBCore.Functions.Progressbar("iceLoad", Lang:t('progressbar.iceLoad'), Config.ShakeTime, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['ice'].animDict,
            anim = Config.Animations['ice'].anim,
            flags = Config.Animations['ice'].flags,
        }, {
            AttachEntityToEntity(prop, ped, boneIndex, 0.015, 0.0100, 0.0250, 0.024, -100.0, 40.0, true, true, false, true, 1, true)
        }, {}, function() -- Done
            ClearPedSecondaryTask(ped)
            DeleteObject(prop)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('sprite-ice:add')
        end)
    else
        QBCore.Functions.Notify(Lang:t('error.dont_have_ice'), 'error', 4500)
    end
end)

RegisterNetEvent('nkoLean:ibuprofenLoad', function()
    local hasItem = QBCore.Functions.HasItem('ibuprofen')
    if hasItem then
        TriggerServerEvent('iced-ibuprofen:mustRemove')
        TriggerEvent('animations:client:EmoteCommandStart', {"drink"})

        prop_name = 'ng_proc_sodacan_01b'
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
        local boneIndex = GetPedBoneIndex(ped, 4000)

        QBCore.Functions.Progressbar("ibuprofenLoad", Lang:t('progressbar.ibuprofenLoad'), Config.ShakeTime, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['ibuprofen'].animDict,
            anim = Config.Animations['ibuprofen'].anim,
            flags = Config.Animations['ibuprofen'].flags,
        }, {
            AttachEntityToEntity(prop, ped, boneIndex, 0.015, 0.0100, 0.0250, 0.024, -100.0, 40.0, true, true, false, true, 1, true)
        }, {}, function() -- Done
            ClearPedSecondaryTask(ped)
            DeleteObject(prop)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('iced-ibuprofen:add')
        end)
    else
        QBCore.Functions.Notify(Lang:t('error.dont_have_ibuprofen'), 'error', 4500)
    end
end)

RegisterNetEvent('nkoLean:leanItem', function()
    local hasItem = QBCore.Functions.HasItem('jolly')
    if hasItem then
        TriggerServerEvent('lean:mustRemove')
        TriggerEvent('animations:client:EmoteCommandStart', {"drink"})

        prop_name = 'ng_proc_sodacan_01b'
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
        local boneIndex = GetPedBoneIndex(ped, 4000)

        QBCore.Functions.Progressbar("leanLoad", Lang:t('progressbar.jollyLoad'), Config.ShakeTime, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['jolly'].animDict,
            anim = Config.Animations['jolly'].anim,
            flags = Config.Animations['jolly'].flags,
        }, {
            AttachEntityToEntity(prop, ped, boneIndex, 0.015, 0.0100, 0.0250, 0.024, -100.0, 40.0, true, true, false, true, 1, true)
        }, {}, function() -- Done
            ClearPedSecondaryTask(ped)
            DeleteObject(prop)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerServerEvent('lean:give')
        end)
    else
        QBCore.Functions.Notify(Lang:t('error.dont_have_jolly'), 'error', 4500)
    end
end)

RegisterNetEvent('nkoLean:useLean', function()
    prop_name = 'ng_proc_sodacan_01b'
    local ped = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(ped))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(ped, 4000)
    TriggerServerEvent('lean:remove')
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("lean", Lang:t('drink.progressbar'), Config.ShakeTime, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Animations['lean'].animDict,
        anim = Config.Animations['lean'].anim,
        flags = Config.Animations['lean'].flags,
    }, {
        AttachEntityToEntity(prop, ped, boneIndex, 0.015, 0.0100, 0.0250, 0.024, -100.0, 40.0, true, true, false, true, 1, true)
    }, {}, function() -- Done
        ClearPedSecondaryTask(ped)
        DeleteObject(prop)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        LeanEffect()
    end)
end)

function TrevorEffect()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(10000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(10000)
    StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
    StopScreenEffect("DrugsTrevorClownsFight")
    StopScreenEffect("DrugsTrevorClownsFightIn")
    StopScreenEffect("DrugsTrevorClownsFightOut")
end

function LeanEffect()
    local startStamina = 8
    TrevorEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            TrevorEffect()
        end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end