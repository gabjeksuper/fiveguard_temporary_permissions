fx_version 'cerulean'
game 'gta5'

author 'gabjeksuper'
description 'Addon to manage temporary permissions for Fiveguard'
version '1.0.0'

shared_script {
    'locales.lua',
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'client/addon/*.lua'
}

server_scripts {
    'server/server.lua',
    'server/addon/*.lua'
}
