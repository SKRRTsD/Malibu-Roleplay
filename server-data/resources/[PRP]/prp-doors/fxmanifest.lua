fx_version 'bodacious'
games { 'rdr3', 'gta5' }

dependency "ghmattimysql"

shared_script "shared/sh_doors.lua"
server_script "server/sv_doors.lua"
client_script "client/cl_doors.lua"
client_script "client/cl_interaction.lua"

server_export 'isDoorLocked'


files {
	'html/index.html',
	'html/js/script.js', 
	'html/css/stylesheet.css',
}


ui_page {
    'html/index.html',
}
