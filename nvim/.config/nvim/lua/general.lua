-- Appearance
vim.o.cmdheight = 2
vim.o.signcolumn = "yes:1"
vim.wo.cursorcolumn = true
vim.wo.cursorline = true
vim.o.listchars = "tab:▸ ,space:⋅,eol:↴,trail:⋅"
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false

-- Colorscheme
vim.o.background = 'dark'
vim.o.termguicolors = true

-- vim.cmd [[colorscheme jellybeans]]
vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
-- vim.cmd [[colorscheme tokyonight]]

-- Tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- Behaviour
vim.bo.undofile = true -- persistent undo
vim.o.updatetime = 500 -- make vim-gitgutter more responsive
vim.g.netrw_altfile = 1 -- netrw doesn't affect Control-6 (as much)
