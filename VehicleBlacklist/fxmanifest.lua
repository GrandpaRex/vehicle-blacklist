-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

author 'Grandpa_Rex#0001'
description 'A simple vehicle blacklist'
version '1.0.0'

-- What to run
client_scripts {
    "@ScaleformUI_Lua/ScaleformUI.lua",
    'client.lua',
    'config.lua'
}

server_script 'server.lua'
