return {
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
        -- default = { "lsp", "path", "snippets", "buffer" },
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
