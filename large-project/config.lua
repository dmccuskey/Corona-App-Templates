--====================================================================--
-- Config.lua
--
-- references
-- http://developer.coronalabs.com/content/configuring-projects
-- http://www.coronalabs.com/blog/2012/12/04/the-ultimate-config-lua-file/
--====================================================================--



--====================================================================--
--== Setup, Constants

application = {}

local RATIO = display.pixelHeight / display.pixelWidth



--====================================================================--
--== Configuration


--== iPad & iPad Retina
if string.sub(system.getInfo('model'),1,4) == 'iPad' then
	application.content = {
		width = 768,
		height = 1024,
		scale = 'letterBox',
		xAlign = 'center',
		yAlign = 'center',
		imageSuffix = {
			['@2x'] = 1.5,
			['@4x'] = 3.0,
		},
	}

elseif string.sub(system.getInfo('model'),1,2) == 'iP' and display.pixelHeight > 960 then
	application.content = {
		width = 768,
		height = 1526,
		scale = 'letterBox',
		xAlign = 'center',
		yAlign = 'center',
		imageSuffix = {
			['@2x'] = 1.5,
			['@4x'] = 3.0,
		},
	}

elseif string.sub(system.getInfo('model'),1,2) == 'iP' then
	application.content = {
		width = 768,
		height = 1152,
		scale = 'letterBox',
		xAlign = 'center',
		yAlign = 'center',
		imageSuffix = {
			['@2x'] = 1.5,
			['@4x'] = 3.0,
		},
	}


--== 16:9 = 1.7778
elseif RATIO > 1.77 then
	application =
	{
		content =
		{
			-- scale 1.78
			width = 768,
			height = 1382, -- 1382.4
			scale = 'letterBox',
			xAlign = 'center',
			yAlign = 'center',
			imageSuffix =
			{
				['@2x'] = 1.5,
				['@4x'] = 3.0,
			},
		},
	}

--== Kindle Fire & Nook - 1024x600 = 1.7067
elseif RATIO > 1.70 then
	application =
	{
		content =
		{
			-- scale 1.70
			width = 768,
			height = 1306, -- 1305.6
			scale = 'letterBox',
			xAlign = 'center',
			yAlign = 'center',
			imageSuffix =
			{
				['@2x'] = 1.5,
				['@4x'] = 3.0,
			},
		},
	}

--== Nexus 7 Tablet - 1280x800 = 1.6
elseif RATIO >= 1.6 then
	application =
	{
		content =
		{
			width = 768,
			height = 1230, -- 1228.8
			scale = 'letterBox',
			xAlign = 'center',
			yAlign = 'center',
			imageSuffix =
			{
				['@2x'] = 1.5,
				['@4x'] = 3.0,
			},
		},
	}

--== The Rest
else
	application =
	{
		content =
		{
			width = 768,
			height = 1024,
			scale = 'letterBox',
			xAlign = 'center',
			yAlign = 'center',
			imageSuffix =
			{
				['@2x'] = 1.5,
				['@4x'] = 3.0,
			},
		},
	}

end

application.showRuntimeErrors = false

