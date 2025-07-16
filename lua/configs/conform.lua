local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "isort" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    yaml = { "prettier" },
    go = { "goimports", "gofmt" },
    rust = { "rustfmt" },

    -- DEFAULT: Use prettier for any unspecified file type
    ["*"] = { "prettier" },

  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  default_format_opts = {
    lsp_fallback = true,
  },

}

return options
