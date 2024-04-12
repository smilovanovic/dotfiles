return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = false,
      },
      window = {
        mappings = {
          ["o"] = "system_open",
        },
      },
      commands = {
        system_open = function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          -- macOs: open file in default application in the background.
          vim.fn.jobstart({ "open", path }, { detach = true })
        end,
      },
    },
    window = {
      auto_expand_width = false,
    },
  },
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ reveal = true })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").root.get() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
  },
}
