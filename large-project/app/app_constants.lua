--====================================================================--
-- Large Project: App Constants
--
-- This file is imported in the App Controller
-- and made available as a global -- 'gAppConstants'
--
--====================================================================--



--====================================================================--
--== Imports


-- none



--====================================================================--
--== Setup, Constants


-- data structure to hold all constants
--
local AppConstants = {}



--====================================================================--
--== Application Constants
--====================================================================--



--====================================================================--
--== General


AppConstants.CONTENT_WIDTH = display.contentWidth
AppConstants.CONTENT_HEIGHT = display.contentHeight



--====================================================================--
--== App Section Keys, Actions, etc


AppConstants.SECTION = {
	LANDING = 'section_landing',
	SETTINGS = 'section_settings',

	MENU = 'menu_view',
	LOGOUT = 'logout_action'
}



--====================================================================--
--== App Components


-- Dialog Characteristics

AppConstants.FIELD_MARGIN = 10
AppConstants.KEYBOARD_OFFSET = 80

-- Tab Bar Characteristics

AppConstants.TABBAR_HEIGHT = 49



--====================================================================--
--== App Style


-- Button Characteristics

AppConstants.BUTTON_RADIUS = 5
AppConstants.BUTTON_STROKE = { w=1, c={1,1,1} }
AppConstants.BUTTON_COLOR = { 0,0,0,0.5 }
AppConstants.BUTTON_DIMS_LG = { w=300, h=44 }
AppConstants.BUTTON_DIMS_SM = { w=145, h=44 }

-- Colors

-- TODO: update these with "stylesheet" names
AppConstants.RED_BOLD = '#ff0500'
AppConstants.RED = '#ff2626'
AppConstants.GREEN_BOLD = '#oae1oa'
AppConstants.GREEN = '#3cbe3c'
AppConstants.SAME = '#cccccc'



--====================================================================--
--== Application Fonts and Metrics


-- none



return AppConstants
