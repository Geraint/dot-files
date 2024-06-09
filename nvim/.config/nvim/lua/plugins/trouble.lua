return {
  {
    "folke/trouble.nvim",
    dependencies = {
        "kyazdani42/nvim-web-devicons",
        "folke/lsp-colors.nvim",
    },
    config = function()
        require("trouble").setup({})
    end,
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", noremap = true },
      { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", noremap = true },
      { "<leader>xo", "<cmd>Trouble symbols toggle win = { position = right, size = 100 }<cr>", noremap = true },
      { "<leader>xi", "<cmd>Trouble lsp_implementations toggle win = { position = right, size = 100 }<cr>", noremap = true },
      { "<leader>xr", "<cmd>Trouble lsp_references toggle win = { position = right, size = 100 }<cr>", noremap = true },
      { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", noremap = true },
      { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", noremap = true },
    },
  },
}
