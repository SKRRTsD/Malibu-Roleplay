fx_version 'bodacious'
games { 'rdr3', 'gta5' }

client_scripts {
  '@mrp-lib/client/cl_rpc.lua',
  '@mrp-lib/client/cl_ui.lua',
  '@mrp-lib/client/cl_polyhooks.lua',
  'client/cl_*.lua',
}

shared_scripts {
  '@mrp-lib/shared/sh_util.lua',
  'sh/*.lua'
}

server_scripts {
  '@mrp-lib/server/sv_rpc.lua',
  '@mrp-lib/server/sv_sql.lua',
  'server/*.lua',
}

ui_page 'html/index.html'
file 'html/index.html'

exports {
	'showInteraction',
  'hideInteraction'
}