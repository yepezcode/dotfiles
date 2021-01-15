"imports"
call plug#begin('~/.vim/plugged') 

"" Temas
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

"" indent lines
Plug 'Yggdroot/indentLine'

"" IDE 
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

"" EasyMotion
Plug 'easymotion/vim-easymotion'

"" Prettier 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"" Auto close tag
Plug 'alvan/vim-closetag'

"" COC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" rainbow pairs 
Plug 'luochen1990/rainbow'

"" Color jsx 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"" analysis javascript syntax
Plug 'dense-analysis/ale'

"" Multiple cursor
Plug 'terryma/vim-multiple-cursors'

call plug#end()
