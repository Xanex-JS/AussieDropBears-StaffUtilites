fx_version 'adamant'

game 'gta5'

server_scripts {
	'server/sclear.lua', -- Clear Chat Script
	'server/syeet.lua', -- Yeet player script
	'server/sdped.lua', -- Default ped script
	'display.lua', -- Displays my credits for this Staff Utils :D
	'config/config.lua' -- Config lel...
}

client_scripts {
	'client/cclear.lua',  -- Clear Chat Script
	'client/cyeet.lua', -- Yeet player script
	'client/cdped.lua',	-- Default ped script
	-- 'client/cpassive.lua', -- Passive Mode
	'config/config.lua' -- Config lel...
}

-- shared_script 'config.lua'

lua54 'yes'

escrow_ignore {
	'readme.md',
	'config/config.lua'
}
