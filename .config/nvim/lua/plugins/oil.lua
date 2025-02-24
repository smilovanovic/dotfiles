local function open_oil_float(cwd)
  require("oil").open_float((cwd and vim.uv.cwd() or nil), { preview = { vertical = true } })
end

return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<S-CR>"] = { "actions.select", opts = { vertical = true, close = true } },
      ["<C-CR>"] = { "actions.select", opts = { horizontal = true, close = true } },
      -- ["<C-v>"] = { "actions.select", opts = { vertical = true, close = true } },
      -- ["<C-s>"] = { "actions.select", opts = { horizontal = true, close = true } },
      -- ["<C-t>"] = { "actions.select", opts = { tab = true, close = true } },
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = { "actions.close", mode = "n" },
      ["<ESC>"] = { "actions.close", mode = "n" },
      ["R"] = "actions.refresh",
      ["-"] = { "actions.parent", mode = "n" },
      ["<BS>"] = { "actions.parent", mode = "n" },
      ["<S-BS>"] = { "actions.open_cwd", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["`"] = { "actions.cd", mode = "n" },
      ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
      ["gs"] = { "actions.change_sort", mode = "n" },
      ["gx"] = "actions.open_external",
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["g\\"] = { "actions.toggle_trash", mode = "n" },
    },
    view_options = {
      show_hidden = true,
      sort = {
        { "type", "asc" },
        { "name", "asc" },
      },
    },
  },
  keys = {
    {
      "<leader>fm",
      function()
        open_oil_float()
      end,

      desc = "Open files (Directory of Current File)",
    },
    {
      "<leader>fM",
      function()
        open_oil_float(true)
      end,
      desc = "Open files (cwd)",
    },
  },
}
