return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    priority = 1000,
    opts = {
      dim_inactive = {
        enabled = true,
        shade = "light",
        percentage = 0.7,
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard",
      dim_inactive = true,
      overrides = {
        -- NormalNC = { bg = "#26292a" },
        NormalNC = { bg = "#32302f" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      -- colorscheme = "catppuccin-mocha",
    },
  },
}
