--====================================================================--
-- Large Project: App Config
--
-- for specific application configurations
--
--====================================================================--

--[[

All variables below are available to the application.

While this file is part of the file check-in, this can be and should be
edited by developers for use in their particular environment.
However, those changes are typically NOT checked in.

--]]


local Config = {}


Config.app = {
	version = '1.0.0',
	build = '00',
}


Config.deployment = {

	DEV = {
		api_host = '192.168.3.84',
		api_port = 8080,
		io_buffering_active = false
	},

	-- this is a separate local entry, perhaps by a developer
	-- for their home network
	DEV_HOME = {
		api_host = '192.168.1.120',
		api_port = 8080,
		io_buffering_active = false
	},

	QA = {
		api_host = 'qa.my-app.com',
		api_port = 80,
		io_buffering_active = false
	},

	PROD = {
		api_host = 'api.my-app.com',
		api_port = 80,
		io_buffering_active = false
	}

}


Config.flag = {
	debug = true,  -- true/false
	mode = 'RUN',  -- 'RUN' or 'TEST'
	deploy = 'DEV',  -- must match one key from 'Config.deployment' above
}



return Config
