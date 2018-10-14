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

""""""""""""""
""" PLUGIN
""""""""""""""
packadd minpac
call minpac#init()

" this errors, so we'll update minpac using `git submodule update --init`
" instead
"call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('Geraint/vim-phpunit')
call minpac#add('Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' })
call minpac#add('Shougo/echodoc.vim')
call minpac#add('SirVer/ultisnips')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': '!bash install.sh' })
call minpac#add('idanarye/vim-merginal')
call minpac#add('jremmen/vim-ripgrep')
call minpac#add('junegunn/fzf', { 'do': '!./install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('lumiliet/vim-twig')
call minpac#add('majutsushi/tagbar')
call minpac#add('mustache/vim-mustache-handlebars')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-php/tagbar-phpctags.vim')
call minpac#add('vimwiki/vimwiki')
call minpac#add('w0rp/ale')


" Minpac
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Ale
let g:ale_linters = {
\   'php': ['php'],
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" Fugitive/Merginal
let g:merginal_windowWidth = 65

" FZF
nnoremap <C-p> :<C-u>Files<CR>
nnoremap <C-o> :Buffers<CR>

" Language Client
let g:LanguageClient_serverCommands = {
    \ 'php': ['tcp://127.0.0.1:2088'],
\ }
nnoremap <leader>lc :call LanguageClient_contextMenu()<cr>

" Ripgrep
let g:rg_highlight = 1

" Tagbar
nnoremap <C-b> :TagbarToggle<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger = "<C-j>"

" VimWiki
let g:vimwiki_list = [
\   { 'path': '~/wiki/private/', 'syntax': 'markdown', 'ext': '.md' },
\   { 'path': '~/wiki/book-notes/', 'syntax': 'markdown', 'ext': '.md' },
\   { 'path': '~/wiki/tech-notes', 'syntax': 'markdown', 'ext': '.md' },
\]
nnoremap <leader>x :VimwikiToggleListItem<cr> " default <c-space> doesn't work for some reason

"""""""""""""
""" COLOR
"""""""""""""

set background=dark
colorscheme nord

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
set updatetime=100  " make vim-gitgutter more responsive

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

