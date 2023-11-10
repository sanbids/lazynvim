local Util = require("lazyvim.util")
local ut = require("config.utils")
local wk = require("which-key")

wk.register({
  ["<leader>l"] = {
    name = " LSP",
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
    name = "󰓩 Buffer",
    c = { "<cmd>BufferLineCloseOthers<cr>", "Close Buffer other not current" },
  },
  ["<leader>f"] = {
    name = "󰥨 Find",
    w = { Util.telescope("live_grep"), "Grep (root dir)" },
  },
  ["<leader>g"] = {
    name = "󰊢 Git",
  },
  ["<leader>p"] = {
    name = " Persistence",
  },
  ["<leader>s"] = {
    name = " Search",
  },
  ["<leader>u"] = {
    name = " UI",
    N = { ut.toggle_ui_notifications(), "Toggle notifications" },
  },
  ["<leader>x"] = {
    name = "󰬍 Quick fix",
  },
})
