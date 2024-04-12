local wezterm = require("wezterm")
local helpers = require("helpers")

local module = {}

local keys = {
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "D",
		mods = "CMD",
		action = wezterm.action.SplitVertical,
	},
	{
		key = "s",
		mods = "CMD",
		action = wezterm.action.PaneSelect,
	},
	{
		key = "h",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "h",
		mods = "CMD|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "j",
		mods = "CMD|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "k",
		mods = "CMD|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "l",
		mods = "CMD|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
}

function module.apply(config)
	helpers.assign_list(config.keys, keys)
end

return module
