return {
  {
    "stevearc/conform.nvim",
    keys = {
      { "<leader>cF", false },

      {
        "<leader>lF",
        function()
          require("conform").format({ formatters = { "injected" } })
        end,
        mode = { "n", "v" },
        desc = "Format Injected Langs",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    keys = {
      { "<leader>cm", false },
      { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },

  {
    "folke/persistence.nvim",
    keys = {
      { "<leader>qd", false },
      { "<leader>ql", false },
      { "<leader>qs", false },
      {
        "<leader>ps",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
      {
        "<leader>pl",
        function()
          require("persistence").load({ last = true })
        end,
        desc = "Restore Last Session",
      },
      {
        "<leader>pd",
        function()
          require("persistence").stop()
        end,
        desc = "Don't Save Current Session",
      },
    },
  },
}
