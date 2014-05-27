set tabstop=5
set shiftwidth=5
set autoindent
set hidden
map <F2> :bprevious<CR>
map <F3> :bnext<CR>
source plugin/matchit.vim 
set bs=2

filetype plugin on
set guifont=Courier_New
syn on
set modeline
set ls=2
set nu
set fileencodings=utf-8
set enc=utf-8

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
" plugins
vim let g:rainbow_active = 1 
