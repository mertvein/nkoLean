local QBCore = exports["qb-core"]:GetCoreObject()
local SellerPed = {}

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = nil
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

-- Functions
local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

CreateThread(function()
    for k, v in pairs(Config.Seller) do
        if not SellerPed[k] then SellerPed[k] = {} end
        local current = v["ped"]
        current = type(current) == 'string' and GetHashKey(current) or current
        RequestModel(current)

        while not HasModelLoaded(current) do Wait(0) end

        SellerPed[k] = CreatePed(0, current, v["coords"].x, v["coords"].y, v["coords"].z - 1, v["coords"].w, false, false)
        TaskStartScenarioInPlace(SellerPed[k], v["scenario"], true)
        FreezeEntityPosition(SellerPed[k], true)
        SetEntityInvincible(SellerPed[k], true)
        SetBlockingOfNonTemporaryEvents(SellerPed[k], true)

        exports["qb-target"]:AddTargetEntity(SellerPed[k], {
            options = {
                {
                    label = v["targetLabel"],
                    icon = v["targetIcon"],
                    event = 'nkoLean:menu',
                },
            },
            distance = 1.2
        })
    end
end)

RegisterNetEvent('nkoLean:menu', function()
    local menu = {
        {
            header = Lang:t('menu.seller_name'),
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.bowl_header')..' |&nbsp;<span style="color:#50bb46; font-weight: bold;"> $'..Config.Items['bowl'].price..'</span>',
            txt = Lang:t('menu.bowl_txt'),
            params = {
                event = 'nkoLean:takeItem',
                args = Config.Items['bowl']
            }
        },
        {
            header = Lang:t('menu.ice_header')..' |&nbsp;<span style="color:#50bb46; font-weight: bold;"> $'..Config.Items['ice'].price..'</span>',
            txt = Lang:t('menu.ice_txt'),
            params = {
                event = 'nkoLean:takeItem',
                args = Config.Items['ice']
            }
        },
        {
            header = Lang:t('menu.ibuprofen_header')..' |&nbsp;<span style="color:#50bb46; font-weight: bold;"> $'..Config.Items['ibuprofen'].price..'</span>',
            txt = Lang:t('menu.ibuprofen_txt'),
            params = {
                event = 'nkoLean:takeItem',
                args = Config.Items['ibuprofen']
            }
        },
        {
            header = Lang:t('menu.jolly_header')..' |&nbsp;<span style="color:#50bb46; font-weight: bold;"> $'..Config.Items['jolly'].price..'</span>',
            txt = Lang:t('menu.jolly_txt'),
            params = {
                event = 'nkoLean:takeItem',
                args = Config.Items['jolly']
            }
        },
        {
            header = Lang:t('menu.sprite_header')..' |&nbsp;<span style="color:#50bb46; font-weight: bold;"> $'..Config.Items['sprite'].price..'</span>',
            txt = Lang:t('menu.sprite_txt'),
            params = {
                event = 'nkoLean:takeItem',
                args = Config.Items['sprite']
            }
        },
    }
    exports['qb-menu']:openMenu(menu)
end)

RegisterNetEvent('nkoLean:takeItem', function(item)
    TriggerServerEvent('nkoLean:serverTake', item)
end)
