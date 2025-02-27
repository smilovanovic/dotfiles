local model = "qwen2.5-coder:7b"

return {
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "qwen2.5-coder:7b", -- The default model to use.
      quit_map = "q", -- set keymap to close the response window
      retry_map = "<c-r>", -- set keymap to re-send the current prompt
      accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
      display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
      show_prompt = "full", -- Shows the prompt submitted to Ollama. Can be true (3 lines) or "full".
      show_model = true, -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = true, -- Never closes the window automatically.
      file = true, -- Write the payload to a temporary file to keep the command short.
      result_filetype = "markdown", -- Configure filetype of the result buffer
      debug = false, -- Prints errors and the command which is run.
    },
    keys = {
      { "<leader>ag", "<cmd>Gen<cr>", mode = { "n", "v" }, desc = "Toggle AI Gen" },
    },
  },
  {
    "Kurama622/llm.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    -- cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    lazy = false,
    config = function()
      local tools = require("llm.tools")

      require("llm").setup({
        prompt = "You are a helpful software engineer.",

        prefix = {
          user = { text = "😃 ", hl = "Title" },
          assistant = { text = "⚡ ", hl = "Added" },
        },
        url = "http://localhost:11434/api/chat", -- your url
        model = model,
        api_type = "ollama",
        temperature = 0.1,
        top_p = 0.9,
        max_tokens = 2048,

        style = "right", -- "float",

        keys = {
          -- The keyboard mapping for the input window.
          ["Input:Submit"] = { mode = "n", key = "<cr>" },
          ["Input:Cancel"] = { mode = { "n", "i" }, key = "<C-c>" },
          ["Input:Resend"] = { mode = { "n", "i" }, key = "<C-r>" },

          -- only works when "save_session = true"
          ["Input:HistoryNext"] = { mode = { "n", "i" }, key = "<C-j>" },
          ["Input:HistoryPrev"] = { mode = { "n", "i" }, key = "<C-k>" },

          -- The keyboard mapping for the output window in "split" style.
          ["Output:Ask"] = { mode = "n", key = "i" },
          ["Output:Cancel"] = { mode = "n", key = "<C-c>" },
          ["Output:Resend"] = { mode = "n", key = "<C-r>" },

          -- The keyboard mapping for the output and input windows in "float" style.
          ["Session:Toggle"] = { mode = "n", key = "<leader>ac" },
          ["Session:Close"] = { mode = "n", key = { "<esc>", "Q" } },
        },

        app_handler = {
          Completion = {
            handler = tools.completion_handler,
            opts = {
              --------------------------------
              ---         ollama
              --------------------------------
              url = "http://localhost:11434/v1/completions",
              model = model,
              api_type = "ollama",
              ---------- end ollama ----------

              n_completions = 3,
              context_window = 8000,
              max_tokens = 2048,

              ignore_filetypes = {},
              auto_trigger = true,
              style = "blink.cmp", -- virtual_text, nvim-cmp or blink.cmp
              timeout = 10, -- max request time
              throttle = 200, -- 1000 only send the request every x milliseconds, use 0 to disable throttle.
              debounce = 200, -- 400 debounce the request in x milliseconds, set to 0 to disable debounce
              virtual_text = {
                accept = {
                  mode = "i",
                  keys = "<A-a>",
                },
                next = {
                  mode = "i",
                  keys = "<A-n>",
                },
                prev = {
                  mode = "i",
                  keys = "<A-p>",
                },
                toggle = {
                  mode = "n",
                  keys = "<leader>cp",
                },
              },
            },
          },
        },
      })
    end,
    keys = {
      { "<leader>ac", mode = "n", "<cmd>LLMSessionToggle<cr>" },
    },
  },
}
