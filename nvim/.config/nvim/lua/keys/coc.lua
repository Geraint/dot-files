local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap("n", "<leader>cd", "<Plug>(coc-definition)", { silent = true })
    keymap("n", "<leader>cD", "<Plug>(coc-type-definition)", { silent = true })
end

return M
