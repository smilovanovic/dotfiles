return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
      -- "giuxtaposition/blink-cmp-copilot",
    },
    opts = {
      keymap = {
        ["<C-c>"] = { "hide", "fallback" },
        -- ["<C-g>"] = {
        --   function(cmp)
        --     cmp.show({ providers = { "copilot" } })
        --   end,
        -- },
      },
      sources = {
        default = { "avante", "lsp", "path", "snippets", "buffer" },
        providers = {
          -- copilot = {
          --   name = "copilot",
          --   module = "blink-cmp-copilot",
          --   score_offset = 100,
          --   async = true,
          -- },
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
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
