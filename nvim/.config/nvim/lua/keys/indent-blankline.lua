local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { silent = true, noremap = true }
    keymap("n", "<leader>ig", ":IndentBlanklineToggle!<CR>", opts)
end

return M
