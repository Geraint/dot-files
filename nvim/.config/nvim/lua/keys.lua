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

-- Deprecated - I@m using the LSP instead
-- require 'keys/phpactor'

require('keys.clipboard').bind_keys()
