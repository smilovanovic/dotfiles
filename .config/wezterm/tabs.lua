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
}

function module.apply(config)
  config.use_fancy_tab_bar = true
  config.hide_tab_bar_if_only_one_tab = true
  -- config.enable_tab_bar = false

  helpers.assign_list(config.keys, keys)
end

return module
