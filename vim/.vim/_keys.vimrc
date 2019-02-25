""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Leader
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"

" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

" List all possible buffers with "gb" and accept a new buffer argument
" see http://reefpoints.dockyard.com/2013/10/22/vim-buffers.html
nnoremap gb :ls<CR>:b

" Shortcut to rapidly togget `set list`
nmap <leader>l :set list!<CR>

" copy and paste to system clipboard with leader-y and leader-P/p
" see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

