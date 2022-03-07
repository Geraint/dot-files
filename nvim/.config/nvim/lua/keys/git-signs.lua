local M = {}

function M.bind_keys()
  local gs = package.loaded.gitsigns
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_set_keymap
  keymap('n', ']c', ':Gitsigns next_hunk<CR>', opts)
  keymap('n', '[c', ':Gitsigns prev_hunk<CR>', opts)
  keymap('n', '<leader>hu', ':Gitsigns reset_hunk<CR>', opts)
end

return M
