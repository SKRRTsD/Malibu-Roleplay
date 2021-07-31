fx_version 'bodacious'
games { 'rdr3', 'gta5' }

client_scripts {
  '@prp-lib/client/cl_rpc.lua',
  '@prp-lib/client/cl_ui.lua',
  '@prp-lib/client/cl_polyhooks.lua',
  'client/cl_*.lua',
}

shared_scripts {
  '@prp-lib/shared/sh_util.lua',
  'sh/*.lua'
}

server_scripts {
  '@prp-lib/server/sv_rpc.lua',
  '@prp-lib/server/sv_sql.lua',
  'server/*.lua',
}

ui_page 'html/index.html'
file 'html/index.html'

exports {
	'showInteraction',
  'hideInteraction'
}