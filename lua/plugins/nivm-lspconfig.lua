return {
  -- LSP keymaps
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "<leader>cA", false }
    keys[#keys + 1] = { "<leader>ca", false }
    keys[#keys + 1] = { "<leader>cr", false }
    keys[#keys + 1] = { "<leader>cl", false }

    --add a keymap
  end,
  keys_map = {
    { "<leader>ll", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
    { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" }, has = "codeAction" },
    {
      "<leader>lA",
      function()
        vim.lsp.buf.code_action({
          context = {
            only = {
              "source",
            },
            diagnostics = {},
          },
        })
      end,
      desc = "Source Action",
      has = "codeAction",
    },
    { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
  },
}
