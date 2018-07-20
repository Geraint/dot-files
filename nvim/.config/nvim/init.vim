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
syntax on
filetype plugin indent on

""""""""""""""
""" LEADER
""""""""""""""
"
let mapleader = "\<Space>"

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

""""""""""""""
""" PLUGIN
""""""""""""""
packadd minpac
call minpac#init()

" this errors, so we'll update minpac using `git submodule update --init`
" instead
"call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' })
call minpac#add('airblade/vim-gitgutter')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': '!bash install.sh' })
call minpac#add('idanarye/vim-merginal')
call minpac#add('joonty/vim-phpunitqf')
call minpac#add('junegunn/fzf', { 'do': '!./install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('lumiliet/vim-twig')
call minpac#add('roxma/LanguageServer-php-neovim', {'do': '!composer install && composer run-script parse-stubs'})
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('vim-airline/vim-airline')


" Minpac
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" FZF
nnoremap <C-p> :<C-u>Files<CR>
nnoremap <C-o> :Buffers<CR>

" PHPUnit
let g:phpunit_cmd = "./vendor/bin/phpunit"
let g:phpunit_args = "--no-coverage"

" LanguageClient-neovim
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"

"""""""""""""
""" COLOR
"""""""""""""

set background=dark
colorscheme nord
set cursorline

"""""""""""""""
""" GENERAL
"""""""""""""""
set number

" tabs
set autoindent      " set the cursor at same indent as line above
set expandtab       " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4    " number of spaces to use for each step of (auto)indent.
set softtabstop=4   " set virtual tab stop (compat for 8-wide tabs)
set tabstop=4       " for proper display of files with tabs

set listchars=tab:▸\ ,eol:¶,trail:·

" make vim-gitgutter more responsive
set updatetime=100

"""""""""""
""" Filetypes
"""""""""""

" Ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert
