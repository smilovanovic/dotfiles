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
  },
  config = function()
    local dap = require("dap")
    dap.set_log_level("TRACE")

    -- local adapter = {
    --   type = "executable",
    --   command = vim.fn.exepath("netcoredbg"),
    --   args = { "--interpreter=vscode" },
    --   options = {
    --     detached = false,
    --   },
    -- }
    -- dap.adapters["netcoredbg"] = adapter
    -- dap.adapters["coreclr"] = adapter
    --
    -- -- Load project-local launch.json if present
    -- require("dap.ext.vscode").load_launchjs(nil, { coreclr = { "cs" }, netcoredbg = { "cs" } })
    --
    -- -- Fallback attach config (macOS: may fail due to task_for_pid restrictions)
    -- dap.configurations.cs = dap.configurations.cs or {}
    -- table.insert(dap.configurations.cs, {
    --   name = "Attach to .NET process",
    --   type = "netcoredbg",
    --   request = "attach",
    --   processId = require("dap.utils").pick_process,
    -- })
  end,
}
