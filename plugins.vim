"imports"
call plug#begin('~/.vim/plugged') 

"" Temas
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'


"" IDE 
Plug 'scrooloose/nerdtree'

"" EasyMotion
Plug 'easymotion/vim-easymotion'

"" Prettier 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"" Auto close tag
Plug 'alvan/vim-closetag'

call plug#end()
