return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest",
      -- "marilari88/neotest-vitest",
    },
    opts = {
      adapters = {
        ["neotest-jest"] = {},
        ["neotest-python"] = {
          args = { "--log-level", "DEBUG", "-v", "-s" },
        },
      },
    },
    -- opts = function(_, opts)
    --   table.insert(
    --     opts.adapters,
    --     require("neotest-jest")({
    --       jestCommand = "yarn test",
    --       jestConfigFile = "custom.jest.config.ts",
    --       env = { CI = true },
    --       cwd = function(path)
    --         return vim.fn.getcwd()
    --       end,
    --     })
    --   )
    --   -- ["neotest-vitest"] = {},
    --   -- ["neotest-jest"] = {
    --   -- require("neotest-jest")({
    --   --   jestCommand = "yarn test",
    --   --   -- jestConfigFile = "custom.jest.config.ts",
    --   --   -- env = { CI = true },
    --   --   cwd = function(path)
    --   --     return vim.fn.getcwd()
    --   --   end,
    --   -- }),
    --   -- ["neotest-python"] = {
    --   --   args = { "--log-level", "DEBUG", "-v", "-s" },
    --   -- },
    -- end,
  },
}
