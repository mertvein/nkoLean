Config = {}
Config.ShakeTime = 5000 -- 5000ms = 5sec
Config.NotifyTime = 2000 -- 2000ms = 2sec

Config.Animations = {
    ['sprite'] = {
        animDict = 'creatures@rottweiler@tricks@',
        anim = 'petting_franklin',
        flags = 49,
    },
    ['ice'] = {
        animDict = 'creatures@rottweiler@tricks@',
        anim = 'petting_franklin',
        flags = 49,
    },
    ['ibuprofen'] = {
        animDict = 'creatures@rottweiler@tricks@',
        anim = 'petting_franklin',
        flags = 49,
    },
    ['jolly'] = {
        animDict = 'creatures@rottweiler@tricks@',
        anim = 'petting_franklin',
        flags = 49,
    },
    ['lean'] = {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49,
    },
}

Config.Items = {
    ['bowl'] = {
        name = 'bowl',
        price = '0.13',
        amount = 1,
        info = {},
        type = 'item',
        slot = 1,
    },
    ['ice'] = {
        name = 'ice',
        price = '0.3',
        amount = 1,
        info = {},
        type = 'item',
        slot = 2,
    },
    ['ibuprofen'] = {
        name = 'ibuprofen',
        price = '2',
        amount = 1,
        info = {},
        type = 'item',
        slot = 3,
    },
    ['jolly'] = {
        name = 'jolly',
        price = '1.3',
        amount = 1,
        info = {},
        type = 'item',
        slot = 4,
    },
    ['sprite'] = {
        name = 'sprite',
        price = '0.8',
        amount = 1,
        info = {},
        type = 'item',
        slot = 5,
    },
}

Config.Seller = {
    ["firstLocation"] = {
        ["coords"] = vector4(-125.57, -1473.45, 33.82, 317.42),
        ["ped"] = 'g_m_y_salvagoon_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-joint",
        ["targetLabel"] = "Satıcıyla Görüş",
        ["products"] = Config.Items["items"],
    },

    ["secondlocation"] = {
        ["coords"] = vector4(-1588.6, -1038.82, 13.02, 108.18),
        ["ped"] = 'g_m_y_salvagoon_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-joint",
        ["targetLabel"] = "Satıcıyla Görüş",
        ["products"] = Config.Items["items"],
    },
}