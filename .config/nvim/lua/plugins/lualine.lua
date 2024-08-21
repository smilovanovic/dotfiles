local custom_gruvbox = require("lualine.themes.gruvbox")

custom_gruvbox.terminal = { a = { bg = "#b16286", fg = "#282828", gui = "bold" } }

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    { theme = custom_gruvbox },
  },
}
