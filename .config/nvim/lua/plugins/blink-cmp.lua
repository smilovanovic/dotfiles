return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
    },
    -- config = function(_, opts)
    --   -- for i, v in ipairs(opts.sources.default) do
    --   --   print(i, v)
    --   --   -- if v == val then
    --   --   --   return table.remove(tbl, i)
    --   --   -- end
    --   -- end
    --   opts.sources.default = { "lsp", "path", "snippets", "buffer", "lazydev" }
    --   require("blink.cmp").setup(opts)
    -- end,
    -- opts = function(_, opts)
    --   opts.sources.default = { "lsp", "path", "snippets", "buffer", "lazydev" }
    --   -- vim.schedule(function()
    --   --   opts.sources.default.remove("copilot")
    --   --   print(vim.inspect(opts))
    --   -- end)
    --   -- table.insert(opts.sources.default, { name = "avante" })
    --   -- return opts
    -- end,
    opts = function(_, opts)
      for i, v in ipairs(opts.sources.default) do
        if v == "copilot" then
          table.remove(opts.sources.default, i)
          break
        end
      end
      opts.keymap["<C-c>"] = { "hide", "fallback" }
      opts.keymap["<C-g>"] = {
        function(cmp)
          cmp.show({ providers = { "copilot" } })
        end,
      }
      opts.sources.providers.avante = {
        module = "blink-cmp-avante",
        name = "Avante",
        opts = {
          -- options for blink-cmp-avante
        },
      }
      table.insert(opts.sources.default, 1, "avante")
      -- table.insert(opts.sources.providers, {
      --   avante = {
      --     module = "blink-cmp-avante",
      --     name = "Avante",
      --     opts = {
      --       -- options for blink-cmp-avante
      --     },
      --   },
      -- })
      -- ({
      --   keymap = {
      --     ["<C-c>"] = { "hide", "fallback" },
      --     ["<C-g>"] = {
      --       function(cmp)
      --         cmp.show({ providers = { "copilot" } })
      --       end,
      --     },
      --   },
      --   sources = {
      --     default = { "avante" },
      --     providers = {
      --       copilot = {},
      --       avante = {
      --         module = "blink-cmp-avante",
      --         name = "Avante",
      --         opts = {
      --           -- options for blink-cmp-avante
      --         },
      --       },
      --     },
      --   },
      --   completion = {
      --     trigger = { prefetch_on_insert = false },
      --     menu = {
      --       draw = {
      --         columns = {
      --           { "kind_icon", "source_name" },
      --           { "label", "label_description", gap = 1 },
      --         },
      --       },
      --     },
      --   },
      -- })
      -- table.insert(opts.sources.default, { "emoji" })
    end,
    -- opts = {
    --   keymap = {
    --     ["<C-c>"] = { "hide", "fallback" },
    --     ["<C-g>"] = {
    --       function(cmp)
    --         cmp.show({ providers = { "copilot" } })
    --       end,
    --     },
    --   },
    --   sources = {
    --     default = { "avante" },
    --     providers = {
    --       copilot = {},
    --       avante = {
    --         module = "blink-cmp-avante",
    --         name = "Avante",
    --         opts = {
    --           -- options for blink-cmp-avante
    --         },
    --       },
    --     },
    --   },
    --   completion = {
    --     trigger = { prefetch_on_insert = false },
    --     menu = {
    --       draw = {
    --         columns = {
    --           { "kind_icon", "source_name" },
    --           { "label", "label_description", gap = 1 },
    --         },
    --       },
    --     },
    --   },
    -- },
  },
}
