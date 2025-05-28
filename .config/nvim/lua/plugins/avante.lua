return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "copilot",
    copilot = {
      model = "claude-3.5-sonnet",
      disable_tools = true,
    },
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
      minimize_diff = true,
      enable_token_counting = true,
    },
    suggestion = {
      debounce = 600,
      throttle = 600,
    },
  },
  build = "make",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
}
