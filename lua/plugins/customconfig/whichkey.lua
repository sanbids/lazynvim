local Util = require("lazyvim.util")
local wk = require("which-key")
wk.register({
  ["<leader>l"] = {
    name = "LSP",
    l = { "<cmd>LspInfo<cr>", "Lsp Info" },
    a = { vim.lsp.buf.code_action, "Code Action" },
    A = {
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
      "Source Action",
    },
    r = { vim.lsp.buf.rename, "Rename" },
  },
  ["<leader>b"] = {
    name = "Buffer",
    c = { "<cmd>BufferLineCloseOthers<cr>", "Close Buffer other not current" },
  },
  ["<leader>f"] = {
    name = "Files",
    w = { Util.telescope("live_grep"), "Grep (root dir)" },
  },
  ["<leader>g"] = {
    name = "Git",
  },
  ["<leader>p"] = {
    name = "Persistence",
  },
  ["<leader>s"] = {
    name = "Search",
  },
  ["<leader>u"] = {
    name = "UI",
  },
  ["<leader>x"] = {
    name = "Quick fix",
  },
})
