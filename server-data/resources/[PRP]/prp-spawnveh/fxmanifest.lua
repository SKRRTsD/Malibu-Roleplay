fx_version 'adamant'

game 'gta5'

server_script "server/main.lua"

client_scripts {
   'config.lua',
   'client/client.lua',
   "@prp-errorlog/client/cl_errorlog.lua"
}
