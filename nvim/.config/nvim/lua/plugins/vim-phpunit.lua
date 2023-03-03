return {
  {
    "Geraint/vim-phpunit",
    dependencies = {
      "vim-test/vim-test",
    },
    config = function()
      vim.cmd([[let test#strategy = "dispatch"]])
      vim.cmd([[let test#php#phpunit#options = '--no-coverage']])
    end,
    keys = {
      { '<leader>tn', ':TestNearest<CR>', silent = true, noremap = true },
      { '<leader>tf', ':TestFile<CR>', silent = true, noremap = true },
      { '<leader>ts', ':TestSuite<CR>', silent = true, noremap = true },
      { '<leader>tl', ':TestLast<CR>', silent = true, noremap = true },
      { '<leader>tv', ':TestVisit<CR>', silent = true, noremap = true },
    },
  },
  {
    "radenling/vim-dispatch-neovim",
    dependencies = {
      "tpope/vim-dispatch",
    },
  },
}
