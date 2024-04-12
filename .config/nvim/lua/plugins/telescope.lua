return {
  "telescope.nvim",
  dependencies = {
    "smilovanovic/telescope-search-dir-picker.nvim",
    config = function()
      require("telescope").load_extension("search_dir_picker")
    end,
  },
  keys = {
    -- disable the keymap to grep files
    { "<leader>sf", "<cmd>Telescope search_dir_picker<cr>", desc = "Live Grep in specific dir" }
  }
}
