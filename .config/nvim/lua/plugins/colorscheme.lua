return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      dim_inactive = true,
    },
  },
  {
    "catppuccin/nvim",
    enabled = false,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard",
      dim_inactive = true,
      overrides = {
        NormalNC = { bg = "#26292a" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      -- colorscheme = "tokyonight",
    },
  },
}
