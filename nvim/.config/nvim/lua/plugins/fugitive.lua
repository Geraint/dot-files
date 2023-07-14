return {
  {
    "tpope/vim-fugitive",
    dependencies = {
      "cedarbaum/fugitive-azure-devops.vim",
    },
    lazy = false,
    keys = {
      { '<leader>gl', ':Git log --oneline<CR>', noremap = true },
      { '<leader>g0', ':Git log --oneline %<CR>', noremap = true },
      { '<leader>gp', ':Git pull<CR>', noremap = true },
      { '<leader>gP', ':Git push<CR>', noremap = true },
    },
  }
}
