--------------------------------------------------------------------------------
-- Key Bindings
--------------------------------------------------------------------------------

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- My Leader
keymap('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Shortcut to rapidly toggle `set list`
keymap('n', '<leader>ll', ':set list!<CR>', opts)

-- switch to last buffer
keymap('n', '<leader><leader>', '<C-S-^>', opts)

--------------------------------------------------------------------------------
-- copy and paste to system clipboard with leader-y and leader-P/p
-- see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
--------------------------------------------------------------------------------
keymap("v", "<leader>y", '"+y', opts)
keymap("v", "<Leader>d", '"+d', opts)
keymap("n", "<Leader>p", '"+p', opts)
keymap("n", "<Leader>P", '"+P', opts)
keymap("v", "<Leader>p", '"+p', opts)
keymap("v", "<Leader>P", '"+P', opts)
