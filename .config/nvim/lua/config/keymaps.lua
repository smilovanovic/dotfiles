-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- prevent cut
vim.keymap.set("n", "C", '"_C')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("v", "c", '"_c')
-- vim.keymap.set("x", "p", '"_dP', { desc = "Preserve clipboard after visual paste" })
vim.keymap.set("n", "<leader>fp", ":let @+ = expand('%')<CR>", { silent = true, desc = "Copy current file path" })
vim.keymap.set("n", "<leader>rp", "i<Up><CR><Esc><Esc>", { silent = true, desc = "Run last terminal command" })
vim.keymap.set("n", "gw", "*N", { desc = "Search word under cursor" })
vim.keymap.set("n", "<leader>%", "ggyG<C-o>", { desc = "Yank the whole file" })
vim.keymap.set("n", "<leader>p", "viwpyiw", { desc = "Paste in word" })
vim.keymap.set("n", "<leader>y", "yiw", { desc = "Yank in word" })
vim.keymap.set("n", "<leader>P", "ggVGp", { desc = "Paste and replace everything" })
vim.keymap.set("n", "<leader>Y", "ggyG<C-o>", { desc = "Yank everything" })

-- window management
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window right" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = "Close other windows" })
vim.keymap.set("n", "<leader>T", ":vs#", { desc = "Open last closed window" })

-- buffer management
vim.keymap.set("n", "<leader>bw", ":bd<CR><C-w>q", { desc = "Delete buffer and close window" })
vim.keymap.set("n", "<leader><CR>", ":b term<CR>", { desc = "Switch to terminal buffer" })

-- terminal
vim.keymap.set("t", "<Esc><cr>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Normal mode" })
