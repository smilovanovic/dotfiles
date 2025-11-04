return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      mappings = {
        reset = {
          normal = "<C-r>",
          insert = "<C-r>",
          callback = function()
            require("CopilotChat").reset()
          end,
        },
      },
    },
  },
}
