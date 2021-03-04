source $HOME/.config/nvim/_general.vim
source $HOME/.config/nvim/_keys.vim
source $HOME/.config/nvim/_plugins.vim

if getfsize('.local.vim') >= 0 && argc() == 0
    silent! source .local.vim
endif
