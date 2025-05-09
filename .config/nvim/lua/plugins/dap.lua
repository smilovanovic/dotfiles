return {
  "mfussenegger/nvim-dap",
  optional = true,
  dependencies = {
    "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    keys = {
      { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
    opts = {
      justMyCode = false,
    },
    config = function()
      require("dap-python").setup("uv")
      table.insert(require("dap").configurations.python, {
        type = "python",
        request = "launch",
        name = "My custom launch configuration",
        program = "${file}",
        justMyCode = false,
        -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
      })
      -- require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
    end,
  },
}
