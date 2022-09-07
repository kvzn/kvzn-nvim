-- Just an example, supposed to be placed in /lua/custom/

local M = {}

M.mappings = require "custom.mappings"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "radium",
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",

        -- rust
        "rust-analyzer",
      },
    },
  },
}

return M
