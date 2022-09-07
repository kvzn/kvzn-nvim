-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

---Common perf related flags for all the LSP servers
local flags = {
  allow_incremental_sync = true,
  debounce_text_changes = 200,
}

-- Rust
lspconfig.rust_analyzer.setup {
  flags = flags,
  capabilities = capabilities,
  on_attach = on_attach,
  init_options = { formatting = true },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
      },
      procMacro = {
        ignored = {
          --['async-trait'] = { 'async_trait' },
          --['napi-derive'] = { 'napi' },
          --['async-recursion'] = { 'async_recursion' },
        },
      },
    },
  },
}

local servers = {
  "html",
  "cssls",
  --  "rust_analyzer",
  "bashls",
  "cmake",
  "golangci_lint_ls",
  "java_language_server",
  "jsonls",
  "pyright",
  "solidity_ls",
  "sqlls",
  "sqls",
  "graphql",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
