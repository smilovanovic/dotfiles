return {
  "folke/snacks.nvim",
  opts = {
    rename = { enabled = true },
    gitbrowse = {
      enabled = true,
    },
    styles = {
      zen = {
        width = 200,
      },
    },
    scroll = { enabled = false },
    dim = {
      enabled = true,
      scope = {
        min_size = 5,
        max_size = 50,
        siblings = true,
      },
    },
    zen = {
      toggles = {
        dim = true,
        git_signs = true,
        mini_diff_signs = true,
        diagnostics = true,
        inlay_hints = true,
      },
    },
  },
  keys = {
    {
      "<leader>go",
      function()
        require("snacks").gitbrowse()
      end,
      desc = "Open git repo file in browser",
    },
  },
}
