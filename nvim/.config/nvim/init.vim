""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: github.com/Geraint
"
" Sections:
"    -> FIRST THING FIRST
"    -> BASIC INFO
"    -> LEADER
"    -> PLUGIN
"    -> COLOR
"    -> GENERAL
"    -> MAP
"    -> MISC

"""""""""""""""""""""""""
""" FIRST THING FIRST
"""""""""""""""""""""""""

" Don't wrap text
set nowrap

" Encoding
set encoding=utf-8

" Plugins essential
set nocompatible
syntax on
filetype plugin indent on

""""""""""""""
""" LEADER
""""""""""""""
"
let mapleader = "\<Space>"

source $HOME/.config/nvim/_plugins.vim

"""""""""""""
""" COLOUR
"""""""""""""

set background=dark
set termguicolors


"""""""""""""""
""" GENERAL
"""""""""""""""

" tabs
set autoindent      " set the cursor at same indent as line above
set expandtab       " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4    " number of spaces to use for each step of (auto)indent.
set softtabstop=4   " set virtual tab stop (compat for 8-wide tabs)
set tabstop=4       " for proper display of files with tabs

set cmdheight=2
set cursorcolumn
set cursorline
set listchars=tab:▸\ ,eol:¶,trail:·
set number
set undofile        " persistent undo
set updatetime=500  " make vim-gitgutter more responsive

"""""""""""
""" Filetypes
"""""""""""

"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>N :bprev<cr> " Previous buffer
nnoremap <leader>l :set list!<CR>

" copy and paste to system clipboard with leader-y and leader-P/p
" see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

