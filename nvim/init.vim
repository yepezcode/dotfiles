
" Creada el 4/11/2020. Disfruta esta Configuracion n.n!
" -----------------------------------------------------"
source $HOME/.config/nvim/plug-config/coc.vim

" -----------SET Config -------------- "
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set smarttab
set cindent
set tabstop=2 
set shiftwidth=2
set expandtab
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ------------------------------------ "
" ------------------------------------ "
call plug#begin('~/.vim/plugged') 
" ------------ Plugins --------------- "

"""" Temas
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

"""" IDE 
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'alvan/vim-closetag'
" ------------------------------------ "
call plug#end()
" ------------------------------------ "
let mapleader=" "
       "C O N F I G U R A C I O N
"
"grvbox 
colorscheme gruvbox
  
" ------------------------------------ "
""" vim-airline

""" NerdTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeQuitOnOpen=1
let NERDTreeMapOpenInTab='<ENTER>'
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
     NERDTreeFind
     wincmd p
  endif
endfunction

" ------------------------------------ "
"                M A P S 
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Tab> gt
let g:coc_global_extensions = [
   \ 'coc-snippets',
   \ 'coc-tsserver',
   \ 'coc-eslint', 
   \ 'coc-prettier', 
   \ 'coc-json', 
   \ 'coc-html',
   \ ]
 
function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
endfunction


 

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <F2> <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

 


 
 " Use `:Format` to format current buffer
 command! -nargs=0 Format :call CocAction('format')
 
 " Use `:Fold` to fold current buffer
 command! -nargs=? Fold :call     CocAction('fold', <f-args>)
 
 " use `:OR` for organize import of current buffer
 command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
 
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
 
"imap <expr><TAB>
 
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"  Barra de indentacion
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal      ']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
 
" ------------------------------------ "
" -----------------------------------------------------"
"  AutoClose Pais
let g:AutoClosePairs = " () [] {} ` ' \""
let g:AutoCloseSelectionWrapPrefix=""
let g:AutoCloseSelectionWrapPrefix=''
" Auto close Tags 
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
