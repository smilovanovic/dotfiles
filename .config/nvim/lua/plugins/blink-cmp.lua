return {
  {
    "Kurama622/llm.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    -- cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    lazy = false,
    config = function()
      local tools = require("llm.common.tools")

      require("llm").setup({
        prompt = "You are a helpful software engineer.",

        prefix = {
          user = { text = "😃 ", hl = "Title" },
          assistant = { text = "⚡ ", hl = "Added" },
        },
        url = "http://localhost:11434/api/chat", -- your url
        model = "qwen2.5-coder:1.5b",
        api_type = "ollama",
        temperature = 0.1,
        top_p = 0.9,
        max_tokens = 256,

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
              model = "qwen2.5-coder:1.5b",
              api_type = "ollama",
              ---------- end ollama ----------

              n_completions = 1,
              context_window = 2048,
              max_tokens = 1024,

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
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-c>"] = { "hide", "fallback" },
        ["<C-g>"] = {
          function(cmp)
            cmp.show({ providers = { "llm" } })
          end,
        },
      },
      sources = {
        -- if you want to use auto-complete
        -- default = { "lsp", "llm" },
        default = { "lsp", "path", "snippets", "buffer", "llm" },
        providers = {
          llm = {
            name = "llm",
            module = "llm.common.completion.frontends.blink",
            timeout_ms = 10000,
            score_offset = 100,
            async = true,
          },
        },
      },
      completion = {
        trigger = { prefetch_on_insert = false },
        menu = {
          draw = {
            columns = {
              { "kind_icon", "source_name" },
              { "label", "label_description", gap = 1 },
            },
          },
        },
      },
    },
  },
}
