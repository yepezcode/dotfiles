"" leader
let mapleader=" "


""Themes IDE
colorscheme gruvbox

"" NerdTree 
nmap <Leader>nt :NERDTreeFind<CR>

"" Save and Close 
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Tab> gt

"" EasyMotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"" Prettier
nmap <Leader>p <Plug>(Prettier)
