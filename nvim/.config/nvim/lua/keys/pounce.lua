local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap("n", "<leader>fs", "<cmd>Pounce<CR>", opts)
end

return M

