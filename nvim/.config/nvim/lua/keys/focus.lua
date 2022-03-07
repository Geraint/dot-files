local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { silent = true }
    keymap("n", "<leader>sh", ":FocusSplitLeft<CR>", { silent = true })
    keymap("n", "<leader>sj", ":FocusSplitDown<CR>", { silent = true })
    keymap("n", "<leader>sk", ":FocusSplitUp<CR>", { silent = true })
    keymap("n", "<leader>sl", ":FocusSplitRight<CR>", { silent = true })
    keymap("n", "<leader>st", ":FocusToggle<CR>", { silent = true })
end

return M
