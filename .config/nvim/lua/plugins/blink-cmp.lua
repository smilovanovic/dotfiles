return {
  {
    "saghen/blink.cmp",
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

      opts.sources.per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      }
      opts.sources.providers.dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" }
    end,
  },
}
