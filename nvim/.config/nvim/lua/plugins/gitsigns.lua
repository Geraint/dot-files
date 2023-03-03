return {
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local opts = { noremap = true, silent = true }
          local keymap = vim.api.nvim_set_keymap
          keymap('n', ']h', ':Gitsigns next_hunk<CR>', opts)
          keymap('n', '[h', ':Gitsigns prev_hunk<CR>', opts)
          keymap('n', '<leader>hu', ':Gitsigns reset_hunk<CR>', opts)
          keymap('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>', opts)
          keymap('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>', opts)
        end
      })
    end,
  }
}
