return {
  dir = "~/Projects/open-source/nvim-alarms",
  lazy = false,
  -- opts = {
  --   "zzz",
  -- },
  keys = {
    {
      "<leader>af",
      function()
        require("nvim-alarms").list()
      end,
    },
    {
      "<leader>an",
      function()
        require("nvim-alarms").menu()
      end,
    },
    {
      "<leader>rr",
      ":Lazy reload nvim-alarms<CR>",
    },
  },
  -- opts = {
  --   some = "some",
  -- },
}
