""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Geraint/vim-phpunit'
Plug 'RyanMillerC/better-vim-tmux-resizer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'epii1/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'ggandor/lightspeed.nvim'
Plug 'idanarye/vim-merginal'
Plug 'janko/vim-test'
Plug 'joshdick/onedark.vim'
Plug 'jpalardy/vim-slime/'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-slash'
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'lumiliet/vim-twig'
Plug 'majutsushi/tagbar'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'radenling/vim-dispatch-neovim'
Plug 'rhysd/git-messenger.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'swekaj/php-foldexpr.vim'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-php/tagbar-phpctags.vim'
Plug 'vim-vdebug/vdebug'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'wellle/context.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" For theme, see COLOUR section below

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_save = 1
"let g:ale_lint_on_text_changed = 0
let g:ale_lint_delay = 1000
let g:ale_open_list = 1
let g:airline#extensions#ale#enabled = 1
nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
nmap <silent> <leader>an <Plug>(ale_next_wrap)
nmap <silent> <leader>af <Plug>(ale_fix)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Context
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:context_enabled = 0
nmap <leader>ct :ContextToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"
" work with phpcd
"let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
"let g:deoplete#ignore_sources.php = ['omni']
call deoplete#custom#option('ignore_sources', {'php': ['omni']})

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive/GV/Merginal/fzf-checkout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:merginal_windowWidth = 65
nmap <leader>gB :Merginal<CR>
nmap <leader>gl :GV<CR>
nmap <leader>g0 :GV!<CR>
nmap <leader>gp :Git pull<CR>

nmap <leader>gb :GBranches<CR>
let g:fzf_branch_actions = {
      \ 'track': {'keymap': 'ctrl-t'},
      \}

" Limelight
nmap <leader>vl :Limelight!!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <C-p> :<C-u>Files<CR>
"nnoremap <C-o> :Buffers<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fl :BLines<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>f: :History:<CR>
nmap <leader>f/ :History/:<CR>
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6, 'xoffset': 1 } }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LSP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'lspconfig'.phpactor.setup{}
EOF

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ripgrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rg_highlight = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Slime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:slime_target = "tmux"
" see https://man.openbsd.org/OpenBSD-current/man1/tmux.1#_last__2
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-b> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TreeSitter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "javascript" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
            },
        },
    },
    move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
            ["]m"] = "@function.outer",
        },
        goto_next_end = {
            ["]M"] = "@function.outer",
        },
        goto_previous_start = {
            ["[m"] = "@function.outer",
        },
        goto_previous_end = {
            ["[M"] = "@function.outer",
        },
    },
}
EOF

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<C-j>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-closetag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.twig.html'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vdebug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vdebug_options = {
\    "break_on_open" : 0,
\    "watch_window_style" : "compact"
\}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#strategy = "dispatch"
let test#php#phpunit#options = '--no-coverage'

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimWiki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
colorscheme jellybeans
let g:airline_theme='jellybeans'

" Embark
"colorscheme embark
let g:embark_terminal_italics = 1
