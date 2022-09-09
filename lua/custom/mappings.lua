local M = {}

-- M.general = {
-- i = {
-- ["<C-]>"] = { "<Esc>", "Esc" },
-- },
-- }

M.lspconfig = {
  plugin = true,

  n = {
    ["<leader>dt"] = {
      function()
        require("custom.utils").toggle_diagnostics()
      end,
      "diagnostic toggle",
    },
  },
}

return M
