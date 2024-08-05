return {
  "neovim/nvim-lspconfig",
  -- init = function()
  --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --   -- INFO: for whatever reason gd via telescope stopped working
  --   keys[#keys + 1] = { "gd", vim.lsp.buf.definition }
  --   -- keys[#keys + 1] = { "gd", ":Telescope lsp_definitions<CR>" }
  -- end,
  opts = {
    inlay_hints = {
      enabled = false,
    },
    -- autoformat = false,
    -- format = {
    --   timeout_ms = 10000,
    -- },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
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
