""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
    set termguicolors
endif

set background=dark
set cmdheight=2
set hlsearch
set listchars=tab:▸\ ,eol:¶,trail:· " Use the same symbols as TextMate for tabstops and EOLs
set nowrap
set number
set rnu
set scrolloff=5 " keep at least 5 lines above/below
hi CursorLine term=none cterm=bold ctermbg=none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set autoindent
set expandtab
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=200
set hidden
au GUIEnter * simalt ~x
set encoding=utf-8
set modeline
