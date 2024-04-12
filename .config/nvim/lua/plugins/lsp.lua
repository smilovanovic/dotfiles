return {
  "neovim/nvim-lspconfig",
  opts = {
    -- autoformat = false,
    -- format = {
    --   timeout_ms = 10000,
    -- },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      cucumber_language_server = {
        mason = false,
      },
      solargraph = {
        mason = false,
      },
    },
    setup = {
      solargraph = function(_, opts)
        -- opts.cmd = { "solargraph", "stdio" }
        opts.init_options = {
          formatting = false,
        }
      end,
      tsserver = function(_, opts)
        opts.init_options = {
          preferences = {
            importModuleSpecifierPreference = "relative",
            importModuleSpecifierEnding = "minimal",
          },
        }
      end,
    },
  },
}
