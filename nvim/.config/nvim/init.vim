""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
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

""""""""""""""
""" PLUGIN
""""""""""""""
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('Shougo/deoplete.nvim')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('autozimu/LanguageClient-neovim')
call minpac#add('dracula/vim')
call minpac#add('gosukiwi/vim-atom-dark')
call minpac#add('joonty/vim-phpunitqf')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('kristijanhusak/vim-hybrid-material')
call minpac#add('lifepillar/vim-gruvbox8')
call minpac#add('lumiliet/vim-twig')
call minpac#add('modess/vim-phpcolors')
call minpac#add('roxma/LanguageServer-php-neovim')
call minpac#add('sjl/badwolf')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('twerth/ir_black')
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

"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

