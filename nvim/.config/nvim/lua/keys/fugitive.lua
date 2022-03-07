local M = {}

function M.bind_keys()
  local keymap = vim.api.nvim_set_keymap
  local opts = { noremap = true }
  keymap('n', '<leader>gl', ':GV<CR>', opts)
  keymap('n', '<leader>gl', ':GV<CR>', opts)
  keymap('n', '<leader>g0', ':GV!<CR>', opts)
  keymap('n', '<leader>gp', ':Git pull<CR>', opts)
  keymap('n', '<leader>gP', ':Git push<CR>', opts)
end

return M
