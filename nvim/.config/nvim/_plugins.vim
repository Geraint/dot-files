""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Geraint/vim-phpunit'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'idanarye/vim-merginal'
Plug 'janko/vim-test'
Plug 'joshdick/onedark.vim'
Plug 'jpalardy/vim-slime/'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-slash'
Plug 'lumiliet/vim-twig'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'majutsushi/tagbar'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'radenling/vim-dispatch-neovim'
Plug 'rhysd/git-messenger.vim'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-php/tagbar-phpctags.vim'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'

call plug#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" For theme, see COLOUR section below

" Ale
let g:ale_linters = {
\   'php': ['php'],
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Deoplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"
" work with phpcd
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" Fugitive/Merginal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:merginal_windowWidth = 65
nmap <leader>gb :Merginal<CR>
nmap <leader>gp :Gpull<CR>

" Limelight
nmap <leader>vl :Limelight!!<CR>

" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <C-p> :<C-u>Files<CR>
"nnoremap <C-o> :Buffers<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fl :BLines<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>f: :History:<CR>

" Ripgrep
let g:rg_highlight = 1

" Slime
let g:slime_target = "tmux"
" see https://man.openbsd.org/OpenBSD-current/man1/tmux.1#_last__2
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

" Tagbar
nnoremap <C-b> :TagbarToggle<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger = "<C-j>"

" vim-test
let test#strategy = "dispatch"
let test#php#phpunit#options = '--no-coverage'

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" VimWiki
let g:vimwiki_list = [
\   { 'path': '~/wiki/private/', 'syntax': 'markdown', 'ext': '.md' },
\   { 'path': '~/wiki/book-notes/', 'syntax': 'markdown', 'ext': '.md' },
\   { 'path': '~/wiki/tech-notes', 'syntax': 'markdown', 'ext': '.md' },
\]
nnoremap <leader>x :VimwikiToggleListItem<cr> " default <c-space> doesn't work for some reason

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colours
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nord - https://github.com/arcticicestudio/nord-vim
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:nord_comment_brightness = 15
"colorscheme nord
"let g:airline_theme='nord'

" OneDark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:onedark_terminal_italics=1
"colorscheme onedark
"let g:airline_theme='onedark'

" JellyBeans
colorscheme jellybeans
let g:airline_theme='jellybeans'
