" imports"
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugins-config.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/coc.vim
"" load prettier config
packloadall

" set config"
set cursorline!
set lazyredraw
set synmaxcol=128
syntax sync minlines=256
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set ruler
set encoding=utf-8
set shortmess+=F
set sw=4
set relativenumber
set laststatus=2
set smarttab
set cindent
set tabstop=8 
set expandtab
set updatetime=300



""" Tags color in jsx
hi Tag        ctermfg=04
hi xmlTag     ctermfg=04
hi xmlTagName ctermfg=04
hi xmlEndTag  ctermfg=04

autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

filetype plugin on
