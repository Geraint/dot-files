""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
    set termguicolors
endif

set background=dark
set cmdheight=2
set cursorcolumn
set cursorline
set listchars=tab:▸\ ,eol:¶,trail:·
set nowrap
set rnu
set number

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      " set the cursor at same indent as line above
set expandtab       " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4    " number of spaces to use for each step of (auto)indent.
set softtabstop=4   " set virtual tab stop (compat for 8-wide tabs)
set tabstop=4       " for proper display of files with tabs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set undofile        " persistent undo
set updatetime=500  " make vim-gitgutter more responsive

