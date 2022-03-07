-- Appearance
vim.o.cmdheight = 2
vim.wo.cursorcolumn = true
vim.wo.cursorline = true
-- vim.o.listchars = "tab:▸\ ,eol:¶,trail:·"
vim.wo.number = true
vim.wo.relativenumber = true

-- Colorscheme
vim.o.background = 'dark'
vim.o.termguicolors = true

-- vim.cmd [[colorscheme jellybeans]]
vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
vim.cmd [[colorscheme tokyonight]]

-- Tabs
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

-- Behaviour
vim.bo.undofile = true -- persistent undo
vim.o.updatetime = 500 -- make vim-gitgutter more responsive
