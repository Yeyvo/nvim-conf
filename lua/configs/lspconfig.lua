require("nvchad.configs.lspconfig").defaults()

-- read :h vim.lsp.config for changing options of lsp servers


-- Modern Neovim 0.11+ LSP configuration
local servers = {
  -- Web Development
  html = {},
  cssls = {},
  ts_ls = {
    settings = {
      typescript = {
        inlayHints = {
          includeInlayParameterNameHints = "all",
        },
      },
    },
  },
  
  -- Python
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          typeCheckingMode = "basic",
          useLibraryCodeForTypes = true,
        },
      },
    },
  },
  
  -- System Languages
  clangd = {},  -- C/C++
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
        checkOnSave = { command = "clippy" },
      },
    },
  },
  
  -- Go
  gopls = {
    settings = {
      gopls = {
        analyses = { unusedparams = true },
        staticcheck = true,
      },
    },
  },
  
  -- Scripting
  bashls = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },  -- Recognize 'vim' as global
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
      },
    },
  },
}

-- Setup all servers
for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end

