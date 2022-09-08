return {
  ["folke/which-key.nvim"] = { disable = false },

  ["neovim/nvim-lspconfig"] = {
    -- disable = true,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust_tools"
    end,
  },

  -- ["neoclide/coc.nvim"] = {
  --  branch = "release",
  -- },

  -- ["lvimuser/lsp-inlayhints.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function() end,
  -- },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "rust-tools.nvim",
    config = function()
      require "custom.plugins.null_ls"
    end,
  },
}
