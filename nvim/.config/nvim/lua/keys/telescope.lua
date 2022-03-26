local M = {}

function M.bind_keys()
  local keymap = vim.api.nvim_set_keymap
  local opts = { noremap = true }
  keymap('n', '<leader>fF', ':lua require("telescope.builtin").find_files()<CR>', opts)
  keymap('n', '<leader>ff', ':lua require("telescope.builtin").git_files()<CR>', opts)
  keymap('n', '<leader>fl', ':lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', opts)
  keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<cr>', opts)
  keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers({sort_mru=true, sort_lastused=true})<cr>', opts)
  keymap('n', '<leader>f:', ':lua require("telescope.builtin").command_history()<cr>', opts)
  keymap('n', '<leader>f/', ':lua require("telescope.builtin").search_history()<cr>', opts)
  keymap('n', '<leader>ft', ':lua require("telescope.builtin").treesitter()<cr>', opts)
  keymap('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<cr>', opts)
  keymap('n', '<leader>ft', ':lua require("telescope.builtin").builtin()<cr>', opts)
  keymap('n', '<leader>gb', ':lua require("telescope.builtin").git_branches()<cr>', opts)
end

return M
