return {
  "echasnovski/mini.files",
  -- "smilovanovic/mini.files",
  -- enabled = false,
  opts = {
    windows = {
      -- Maximum number of windows to show side by side
      max_number = math.huge,
      -- Whether to show preview of file/directory under cursor
      preview = true,
      -- Width of focused window
      width_focus = 60,
      -- Width of non-focused window
      width_nofocus = 40,
      -- Width of preview window
      width_preview = 60,
    },
    options = {
      use_as_default_explorer = true,
    },
    mappings = {
      close = "q",
      go_in = "",
      go_in_plus = "l",
      go_out = "h",
      go_out_plus = "H",
      reset = "<BS>",
      reveal_cwd = "@",
      show_help = "g?",
      synchronize = "=",
      trim_left = "<",
      trim_right = ">",
    },
  },
}
