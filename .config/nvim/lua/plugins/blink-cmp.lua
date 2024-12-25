return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<C-c>"] = { "hide", "fallback" },
    },
    completion = {
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
}
