local wezterm = require("wezterm")
local tabs = require("tabs")
local panes = require("panes")

local config = wezterm.config_builder()

-- config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "Rosé Pine (Gogh)"
config.color_scheme = "Monokai Pro (Gogh)"

config.font = wezterm.font({
  -- family = "JetBrains Mono",
  family = "Hack Nerd Font",
  harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
-- config.font = wezterm.font({
-- 	family = "Fira Code",
-- 	harfbuzz_features = { "zero" },
-- })
config.font_size = 13.5

-- config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false

config.default_cursor_style = "BlinkingUnderline"

config.launch_menu = {
  {
    label = "Top",
    args = { "top" },
  },
  {
    label = "WezTerm logs",
    args = {
      "/opt/homebrew/bin/wezterm",
      "cli",
      "split-pane",
    },
    cwd = os.getenv("HOME") .. "/.local/share/wezterm",
  },
}

config.disable_default_key_bindings = false

config.keys = {
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {
    key = "LeftArrow",
    mods = "OPT",
    action = wezterm.action({ SendString = "\x1bb" }),
  },
  -- Make Option-Right equivalent to Alt-f; forward-word
  {
    key = "RightArrow",
    mods = "OPT",
    action = wezterm.action({ SendString = "\x1bf" }),
  },
  {
    key = "o",
    mods = "CMD",
    action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|LAUNCH_MENU_ITEMS|WORKSPACES" }),
  },
  {
    key = "Enter",
    mods = "CMD",
    action = wezterm.action.ToggleFullScreen,
  },
}

tabs.apply(config)
panes.apply(config)

config.native_macos_fullscreen_mode = false
wezterm.on("gui-startup", function(cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

wezterm.on("format-tab-title", function(tab)
  local cwd = string.match(tab.active_pane.current_working_dir.file_path, "/([^/]*)$")

  return {
    { Text = cwd },
  }
end)

return config
