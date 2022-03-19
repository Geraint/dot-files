local M = {}

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true }
    keymap("n", "<leader>Ft", ':NvimTreeToggle<cr>', opts)
    keymap("n", "<leader>Ff", ':NvimTreeFindFile<cr>', opts)
end

return M
