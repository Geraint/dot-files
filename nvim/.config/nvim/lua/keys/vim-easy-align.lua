local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = {}
    keymap("n", "<leader>ea", "<Plug>(EasyAlign)", opts)
    keymap("x", "<leader>ea", "<Plug>(EasyAlign)", opts)
end

return M
