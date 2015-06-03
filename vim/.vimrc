
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set history=200

set number
set background=dark
colorscheme ir_black
syntax on
set hidden
au GUIEnter * simalt ~x
set cul
hi CursorLine term=none cterm=bold ctermbg=none
set autoindent smartindent
set nocompatible
set scrolloff=5               " keep at least 5 lines above/below

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" List all possible buffers with "gb" and accept a new buffer argument
" see http://reefpoints.dockyard.com/2013/10/22/vim-buffers.html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap gb :ls<CR>:b

"""""""""""""""""""""""""""""""""""""""""""""""""""
" see http://vimcasts.org/episodes/show-invisibles/
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Show invisible whitespace by default
set list

" My Leader
let mapleader = "\<Space>"

" Shortcut to rapidly togget `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¶,trail:·

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy and paste to system clipboard with leader-y and leader-y
" see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

