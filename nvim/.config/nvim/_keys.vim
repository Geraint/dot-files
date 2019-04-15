""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Leader
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"

" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" copy and paste to system clipboard with leader-y and leader-P/p
" see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
