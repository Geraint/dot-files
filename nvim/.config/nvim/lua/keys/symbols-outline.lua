local M = {}

function M.set_options()
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        auto_preview = false,
        show_numbers = true,
        show_relative_numbers = true,
        width = 33,
        keymaps = {
            hover_symbol = "H",
        },
    }
end

function M.bind_keys()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true }
    keymap("n", "<leader>so", ':SymbolsOutline<cr>', opts)
end

return M
