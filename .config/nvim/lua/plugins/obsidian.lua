return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre /Users/stefan/Obsidian/**.md",
    "BufNewFile /Users/stefan/Obsidian/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  keys = {
    { "<leader>no", "<cmd>ObsidianOpen<cr>", desc = "Obsidian open note" },
    { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "Obsidian new note" },
    { "<leader>nf", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian find file" },
    { "<leader>ns", "<cmd>ObsidianSearch<cr>", desc = "Obsidian search" },
    { "<leader>nw", "<cmd>ObsidianWorkspace<cr>", desc = "Obsidian workspace switch" },
    { "<leader>ngd", "<cmd>ObsidianFollowLink vsplit<cr>", desc = "Obsidian follow vsplit" },
    { "<leader>ngr", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian backlinks" },
    { "<leader>nt", "<cmd>ObsidianTags<cr>", desc = "Obsidian tags" },
    { "<leader>nll", "<cmd>ObsidianLinks<cr>", desc = "Obsidian links search" },
    { "<leader>nls", "<cmd>ObsidianLink<cr>", desc = "Obsidian link selected to existing", mode = "v" },
    { "<leader>nln", "<cmd>ObsidianLinkNew<cr>", desc = "Obsidian link selected to new", mode = "v" },
    { "<leader>ncr", "<cmd>ObsidianRename<cr>", desc = "Obsidian rename" },
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Obsidian/personal",
      },
      {
        name = "mobile",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Mobile notes",
      },
    },
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 1,
    },
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true },
      },
    },
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = "telescope.nvim",
      -- Optional, configure key mappings for the picker. These are the defaults.
      -- Not all pickers support all mappings.
      mappings = {
        -- Create a new note from your query.
        new = "<C-x>",
        -- Insert a link to the selected note.
        insert_link = "<C-l>",
      },
    },
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart({ "open", url }) -- Mac OS
      -- vim.fn.jobstart({"xdg-open", url})  -- linux
    end,
  },
}
