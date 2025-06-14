-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "80"
vim.g.snacks_animate = false
vim.opt.sessionoptions =
  { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds", "terminal" }

-- vim.g.lazyvim_python_lsp = "pylsp"

-- INFO: disable "delete-and-recreate" method when saving files.
-- which causes issues with nx.dev watch
vim.cmd([[ set nobackup ]])
vim.cmd([[ set nowritebackup ]])
vim.cmd([[ set noswapfile ]])
