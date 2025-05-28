local get_root_dir = function(fname)
  local util = require("lspconfig.util")
  return util.root_pattern("package.json", "tsconfig.json")(fname) or util.root_pattern(".git")(fname)
end

-- vim.lsp.config("pyright", {
--   cmd = { "ty", "server" },
--   filetypes = { "python" },
--   root_markers = { "ty.toml", "pyproject.toml", ".git" },
--   init_options = {
--     settings = {
--       environment = {
--         ["python-platform"] = "darwin",
--       },
--     },
--   },
-- })
-- vim.lsp.enable("ty")

return {
  "neovim/nvim-lspconfig",
  -- init = function()
  --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --   -- INFO: for whatever reason gd via telescope stopped working
  --   keys[#keys + 1] = { "gd", vim.lsp.buf.definition }
  --   -- keys[#keys + 1] = { "gd", ":Telescope lsp_definitions<CR>" }
  -- end,
  dependencies = {},
  opts = {
    inlay_hints = {
      enabled = false,
    },
    -- autoformat = false,
    -- format = {
    --   timeout_ms = 10000,
    -- },
    servers = {
      -- pyright = {
      --   enabled = false,
      -- },
      ts_ls = {
        enabled = false,
      },
      -- typos_lsp = {
      --   init_options = {
      --     diagnosticSeverity = "Warning",
      --   },
      -- },
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
      vtsls = {
        enabled = true,
        -- root_dir = get_root_dir,
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "project-relative",
              importModuleSpecifierEnding = "minimal",
            },
          },
        },
      },
      -- pylsp = {
      --   settings = {
      --     pylsp = {
      --       plugins = {
      --         rope_autoimport = {
      --           enabled = true,
      --         },
      --       },
      --     },
      --   },
      -- },
    },
    setup = {
      solargraph = function(_, opts)
        -- opts.cmd = { "solargraph", "stdio" }
        opts.init_options = {
          formatting = false,
        }
      end,
      -- tsserver = function(_, opts)
      --   opts.init_options = {
      --     preferences = {
      --       importModuleSpecifierPreference = "relative",
      --       importModuleSpecifierEnding = "minimal",
      --     },
      --   }
      -- end,
    },
  },
}
