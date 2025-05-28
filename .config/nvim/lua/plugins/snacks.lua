return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = true },
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
    {
      "<leader>sf",
      function()
        local Snacks = require("snacks")
        Snacks.picker({
          finder = "proc",
          cmd = "fd",
          args = { "--type", "d", "--exclude", ".git" },
          title = "Select search directory",
          layout = {
            preset = "select",
          },
          actions = {
            confirm = function(picker, item)
              picker:close()
              vim.schedule(function()
                Snacks.picker.grep({
                  cwd = item.file,
                })
              end)
            end,
          },
          transform = function(item)
            item.file = item.text
            item.dir = true
          end,
        })
      end,
      desc = "Search in dir",
    },
  },
}
