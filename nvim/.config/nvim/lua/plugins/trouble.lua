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
      { "<leader>xx", "<cmd>TroubleToggle<cr>", silent = true, noremap = true },
      { "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", silent = true, noremap = true },
      { "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", silent = true, noremap = true },
      { "<leader>xl", "<cmd>Trouble loclist<cr>", silent = true, noremap = true },
      { "<leader>xq", "<cmd>Trouble quickfix<cr>", silent = true, noremap = true },
      { "gR", "<cmd>Trouble lsp_references<cr>", silent = true, noremap = true },
    },
  },
}
