--====================================================================--
-- Large Project: main.lua
--
--====================================================================--

print( '\n\n##############################################\n\n' )




--====================================================================--
--== Imports

-- read in app deployment configuration, global
_G.gINFO = require 'app_config'



--====================================================================--
--== Setup, Constants


local launch_args = ...

local Controller = nil -- set in main()

local deploy_conf = nil -- temp variable


--== Create Globals

-- NOTE:
-- Variables which start with 'g' are "global".
-- nothing else in the entire app should be global

_G.gVERSION = gINFO.app.version

_G.gDEBUG = gINFO.flag.debug or false
_G.gDEPLOY = gINFO.flag.deploy or 'DEV'

deploy_conf = gINFO.deployment[ gDEPLOY ]

_G.gAPI_HOST = deploy_conf.api_host
_G.gAPI_PORT = deploy_conf.api_port

if deploy_conf.io_buffering_active then
	-- **debug: disable output buffering for Xcode Console
	io.output():setvbuf('no')
end



--====================================================================--
--== Main
--====================================================================--


local main = function()

	local params = {
		api_config={
			host=gAPI_HOST,
			port=gAPI_PORT,
		}
	}
	if gINFO.flag.mode == 'TEST' then
		Controller = require 'app.test_controller'
	else
		Controller = require 'app.app_controller'
	end
	Controller.run( params )

end

main()
