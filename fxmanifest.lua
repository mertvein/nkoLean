fx_version 'cerulean'
game 'gta5'

author 'github.com/nkowashere'
discord 'discord.gg/nko'
description 'Lean is a script made by nkò that you can prepare.'
version '1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/tr.lua',
    'locales/*.lua',
    'cfg.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

lua54 'yes'