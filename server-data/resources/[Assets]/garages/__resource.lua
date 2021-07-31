resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'


client_script "@prp-infinity/client/cl_lib.lua"
server_script "@prp-infinity/server/sv_lib.lua"

server_scripts {
	'server.lua'
}

client_script {
	'client.lua'
}
