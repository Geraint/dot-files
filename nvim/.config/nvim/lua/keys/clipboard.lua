local M = {}

-- copy and paste to system clipboard with leader-y and leader-P/p
-- see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true }
    keymap("v", "<leader>y", '"+y', opts)
    keymap("v", "<Leader>d", '"+d', opts)
    keymap("n", "<Leader>p", '"+p', opts)
    keymap("n", "<Leader>P", '"+P', opts)
    keymap("v", "<Leader>p", '"+p', opts)
    keymap("v", "<Leader>P", '"+P', opts)
end

return M
