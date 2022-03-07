local M = {}

function M.bind_keys()
  vim.api.nvim_set_keymap('n', '<leader>tn', ':TestNearest<CR>', { silent = true })
  vim.api.nvim_set_keymap('n', '<leader>tf', ':TestFile<CR>', { silent = true })
  vim.api.nvim_set_keymap('n', '<leader>ts', ':TestSuite<CR>', { silent = true })
  vim.api.nvim_set_keymap('n', '<leader>tl', ':TestLast<CR>', { silent = true })
  vim.api.nvim_set_keymap('n', '<leader>tv', ':TestVisit<CR>', { silent = true })
end

return M
