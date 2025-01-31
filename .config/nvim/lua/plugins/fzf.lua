return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<leader>sf",
      function()
        local fzf = require("fzf-lua")
        fzf.fzf_exec("fd -t d", {
          actions = {
            ["default"] = function(selected)
              fzf.live_grep({ cwd = selected[1] })
            end,
          },
        })
      end,
      desc = "Search in dir",
    },
  },
}
