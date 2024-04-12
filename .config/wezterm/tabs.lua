local wezterm = require("wezterm")
local helpers = require("helpers")

local module = {}

local keys = {
	{
		key = "H",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "L",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "T",
		mods = "CMD",
		action = wezterm.action.ShowTabNavigator,
	},
	{
		key = "p",
		mods = "CMD",
		action = wezterm.action.ActivateCommandPalette,
	},
}

function module.apply(config)
	helpers.assign_list(config.keys, keys)
end

return module
